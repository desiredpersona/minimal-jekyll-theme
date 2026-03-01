# Plan: Improve minimal-jekyll-theme
## Sources: Nostalgia + Minima best practices

---

## Sources

| Source | URL | Key lesson |
|--------|-----|-----------|
| Nostalgia | https://github.com/desiredpersona/nostalgia | Minimal CSS, ordinal dates, env-aware robots, author fallback, print styles, design tokens |
| Minima | https://github.com/jekyll/minima | `custom-head` hook, CSS override hooks, dark mode / skin system, `feed_meta` tag, `escape` filter, social links, GA4, excerpts toggle |

---

## Part A — Bug Fixes

### A1. `read_time.html` — wrong variable in single-post view
`read_time.html` always reads `post.content`, but when called from `post_meta.html` inside
`post.html` there is no `post` loop variable — only `page`. The word count silently becomes 0
(every post shows "Less than 1 min read").

**Fix** — fall back to `page.content`:
```liquid
{% if post.content %}
  {% assign _rtime_content = post.content %}
{% else %}
  {% assign _rtime_content = page.content %}
{% endif %}
{% assign words = _rtime_content | strip_html | number_of_words %}
```
**File:** `_includes/read_time.html`

---

### A2. `blog.html` — typo `</aritcle>` → `</article>`
**File:** `_layouts/blog.html`

---

### A3. `share_icons.html` — broken Twitter `via` parameter
Share URL reads `site.text.twitter.username` but `_config.yml` stores the Twitter handle at
`site.twitter.username`.

**Fix:**
```html
{% if site.twitter.username %}via={{ site.twitter.username }}&{% endif %}
```
**File:** `_includes/share_icons.html`

---

### A4. `author_bio.html` — internal CTA link opens in new tab
The relative (internal) CTA branch has `target="_blank"`, opening the author page in a new
tab unintentionally.

**Fix:** Remove `target="_blank"` from the `{% else %}` (relative URL) branch.
**File:** `_includes/author_bio.html`

---

### A5. `default.html` — hardcoded favicon path breaks subpath deployments
```html
<link rel="icon" type="image/png" href="/favicon.png">
```
**Fix:**
```html
<link rel="icon" type="image/png" href="{{ '/favicon.png' | relative_url }}">
```
**File:** `_layouts/default.html`

---

## Part B — From Nostalgia

### B1. Environment-aware robots meta tag
Nostalgia's base layout automatically sets `noindex, nofollow` in development, preventing
staging/local builds from being accidentally indexed.

**Replace** the current single-line robots block in `default.html`:
```html
{% if jekyll.environment == 'production' %}
  {% if page.meta_robots %}
    <meta name="robots" content="{{ page.meta_robots }}">
  {% else %}
    <meta name="robots" content="index, follow">
  {% endif %}
{% else %}
  <meta name="robots" content="noindex, nofollow">
{% endif %}
```
**File:** `_layouts/default.html`

---

### B2. Ordinal date formatting
Nostalgia formats dates as "26th February 2026". Add a reusable Liquid partial that adds
the correct ordinal suffix (handles the 11th/12th/13th edge-cases via mod-100 check).

**New file `_includes/ordinal_date.html`:**
```liquid
{% assign _day  = include.date | date: "%-d" | plus: 0 %}
{% assign _m10  = _day | modulo: 10 %}
{% assign _m100 = _day | modulo: 100 %}
{% if _m100 >= 11 and _m100 <= 13 %}{% assign _sfx = "th" %}
{% elsif _m10 == 1 %}{% assign _sfx = "st" %}
{% elsif _m10 == 2 %}{% assign _sfx = "nd" %}
{% elsif _m10 == 3 %}{% assign _sfx = "rd" %}
{% else %}{% assign _sfx = "th" %}{% endif -%}
{{ _day }}{{ _sfx }} {{ include.date | date: "%B %Y" }}
```

Replace every `date: site.date_format` call in layouts/includes with:
```liquid
{% include ordinal_date.html date=post.date %}
```
(using `post.date`, `page.date`, or `post.last_modified_at` as appropriate)

**New file:** `_includes/ordinal_date.html`
**Updated files:** `_includes/post_meta.html`, `_layouts/home.html`,
`_layouts/blog.html`, `_layouts/archive.html`, `_layouts/archives.html`

---

### B3. Author fallback — use full data object when no per-post author is set
When `page.author` is blank, both `post_meta.html` and `author_bio.html` fall back to
`site.author` (a plain string), losing access to picture, bio, and URL stored in
`_data/authors.yml`.

**Fix both includes:**
```liquid
{% if page.author and site.data.authors[page.author] %}
  {% assign author = site.data.authors[page.author] %}
{% elsif site.data.authors[site.author] %}
  {% assign author = site.data.authors[site.author] %}
{% else %}
  {% assign author = site.author %}
{% endif %}
```
**Files:** `_includes/post_meta.html`, `_includes/author_bio.html`

---

### B4. Replace Sass pipeline and Tachyons with plain CSS design system
Nostalgia uses plain CSS with CSS custom properties — no preprocessor, no utility framework.
Remove the entire Sass pipeline and Tachyons CSS framework. Replace with a single
`assets/css/theme.css` using semantic BEM-style component classes. Dark mode (C3) is
included here since it lives in the same file.

**What is deleted:**
- All 67 files in `_sass/` (Tachyons SCSS modules + `_variables.scss` + `_theme.scss` +
  `_tachyons.scss`)
- `assets/css/minimal.scss` (the Sass entry point with front matter)
- The `sass:` config block from `_config.yml`
- `_sass` from the files glob in `minimal-jekyll-theme.gemspec`

**What is added:**

`assets/css/theme.css` — complete CSS design system (26 sections) using CSS custom
properties inspired by Nostalgia's architecture:

- **Design tokens on `:root`** — type scale (f1–f7 values), font weights, colours matching
  the original Tachyons palette, spacing scale, border radii
- **Automatic dark mode** via `@media (prefers-color-scheme: dark)` (merges C3)
- **Semantic BEM-style component classes** replacing all Tachyons utility classes:
  `.site-header`, `.site-nav`, `.hero`, `.post-layout`, `.page-layout`,
  `.listing-layout`, `.post-content`, `.post-list-item`, `.blog-list-item`,
  `.author-meta`, `.author-bio`, `.tag-list`, `.share-icons`, `.sidebar`,
  `.footer-nav`, form classes, buttons, alerts, background overlays
- Syntax highlighting, typography, reset, and responsive breakpoints preserved

**Templates rewritten (20 files)** — all Tachyons utility classes replaced with the
semantic classes above:
- Layouts: `default`, `post`, `page`, `home`, `blog`, `archives`, `archive`,
  `category`, `tag`
- Includes: `header`, `navigation`, `footer`, `post_meta`, `author_bio`,
  `category_tag_list`, `share_icons`, `sidebar`, `netlify-form`, `newsletter`
- Docs pages: `archive`, `category`, `tag`

**Deleted:** `_sass/` (entire directory, 67 files), `assets/css/minimal.scss`
**New file:** `assets/css/theme.css`
**Updated files:** `_layouts/default.html`, `_config.yml`, `minimal-jekyll-theme.gemspec`,
all 20 templates listed above

---

### B5. CSS minification for production
Without the Sass pipeline, Jekyll no longer compresses the theme CSS. Add `jekyll-minifier`
to handle CSS (and HTML — see B6) minification at build time.

Add to `minimal-jekyll-theme.gemspec`:
```ruby
spec.add_runtime_dependency "jekyll-minifier"
```

Add to `_config.yml`:
```yaml
################################
# Jekyll Minifier
# https://github.com/digitalsparky/jekyll-minifier
################################
jekyll-minifier:
  uglifier_args:
    harmony: true
```

Add to `plugins:` list in `_config.yml` and `docs/_config.yml`:
```yaml
  - jekyll-minifier
```

**Updated files:** `minimal-jekyll-theme.gemspec`, `Gemfile`, `docs/Gemfile`,
`_config.yml`, `docs/_config.yml`

---

### B6. HTML minification for production
`jekyll-minifier` (added in B5) also minifies HTML output. No additional configuration
is required — it handles HTML automatically once the plugin is active.

---

## Part C — From Minima

### C1. `custom-head.html` extensibility hook
Minima ships an empty `_includes/custom-head.html` that users can populate (in their own
site's `_includes/`) with favicons, custom meta tags, additional stylesheets, etc.,
without editing the theme files. This is the official Jekyll-recommended extensibility
pattern.

**Add to `default.html` `<head>`, just before `</head>`:**
```html
{%- include custom-head.html -%}
```

**New file `_includes/custom-head.html`:** (empty with a comment)
```html
{% comment %}
  Customize the <head> by creating _includes/custom-head.html in your site.
  Example uses: favicons, custom stylesheets, additional meta tags.
{% endcomment %}
```

**Updated file:** `_layouts/default.html`

---

### C2. CSS user override file
Minima provides user-facing override files so people can customise the theme without
forking it. With Sass removed (B4), the equivalent is a plain `assets/css/custom.css`
that ships empty and is loaded last. Users override it by placing their own
`assets/css/custom.css` in their site directory (Jekyll's theme gem lookup gives site
files priority over theme gem files).

**New file `assets/css/custom.css`:** (empty, with comment)
```css
/*
  Add your custom styles here.
  This file is loaded after the theme CSS so your rules take precedence.
  To override a design token, re-declare it on :root:

    :root { --color-link: #005ea2; }
*/
```

**Update `default.html`** — add a third link after `theme.css`:
```html
<link rel="stylesheet" href="{{ '/assets/css/custom.css' | relative_url }}">
```

**New file:** `assets/css/custom.css`
**Updated file:** `_layouts/default.html`

---

### C3. Dark mode — merged into B4
The `@media (prefers-color-scheme: dark)` block lives directly in `theme.css`.
No separate step required.

---

### C4. Use `feed_meta` tag from jekyll-feed
Minima uses the `{%- feed_meta -%}` Liquid tag provided by the `jekyll-feed` plugin rather
than a manually written `<link>` element. This keeps the feed URL in sync automatically,
respects `atom_feed.path` overrides, and is the plugin's intended usage.

**Replace** in `default.html`:
```html
<!-- OLD -->
<link href="{% if site.atom_feed.path %}{{ site.atom_feed.path }}{% else %}{{ '/feed.xml' | relative_url }}{% endif %}" type="application/atom+xml" rel="alternate" title="{{ site.title }} Feed">

<!-- NEW -->
{%- feed_meta -%}
```

**File:** `_layouts/default.html`

---

### C5. Consistently escape user-controlled strings
Minima uses `| escape` on all user-provided strings that appear in HTML attributes to
prevent XSS. Apply this throughout the theme's layouts and includes.

Key locations to add `| escape`:
- `{{ site.title }}` → `{{ site.title | escape }}` (in `header.html`, `footer.html`)
- `{{ page.title }}` → `{{ page.title | escape }}` (in layout `<title>` elements)
- `{{ author.name }}` → `{{ author.name | escape }}` (in `post_meta.html`, `author_bio.html`)

**Files:** `_includes/header.html`, `_includes/footer.html`, `_includes/post_meta.html`,
`_includes/author_bio.html`, `_layouts/default.html`

---

### C6. Google Analytics 4 support
Minima documents that the old `UA-*` format is no longer supported and that GA4's
`G-XXXXXXXXXX` format is now standard. Update `_config.yml` to add a
`google_analytics` key alongside the existing `google_tag_manager` key, and add a
`_includes/google-analytics.html` partial (production-only) that renders the GA4
`gtag.js` snippet.

`_config.yml`:
```yaml
# Google Analytics 4
google_analytics: G-XXXXXXXXXX  # replaces old UA-* format
```

`_includes/google-analytics.html`:
```html
<script async src="https://www.googletagmanager.com/gtag/js?id={{ site.google_analytics | escape }}"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', '{{ site.google_analytics | escape }}');
</script>
```

Include in `default.html` (alongside the existing GTM block):
```html
{%- if site.google_analytics and jekyll.environment == 'production' -%}
  {%- include google-analytics.html -%}
{%- endif -%}
```

**New file:** `_includes/google-analytics.html`
**Updated files:** `_config.yml`, `docs/_config.yml`, `_layouts/default.html`

---

### C7. `show_excerpts` toggle for post listings
Minima provides a `minima.show_excerpts: true` config option to show post excerpts on
the home page. Add an equivalent `show_excerpts` option to this theme.

`_config.yml`:
```yaml
show_excerpts: false  # Show post excerpts on home and blog listing pages
```

In `home.html` and `blog.html`, wrap the existing excerpt/read-more link:
```liquid
{% if site.show_excerpts %}
  <p>{{ post.excerpt | strip_html | truncatewords: 40 }}</p>
{% endif %}
```

**Updated files:** `_config.yml`, `_layouts/home.html`, `_layouts/blog.html`

---

## Part D — Housekeeping

### D1. Remove Alexa webmaster verification
Amazon Alexa web analytics shut down in May 2022. Remove the dead
`webmaster_verifications.alexa` key from both config files.

**Files:** `_config.yml`, `docs/_config.yml`

---

### D2. Bump gemspec version to `1.0.0`
The gemspec still shows `1.0.0.beta`. Bump to `1.0.0`.
**File:** `minimal-jekyll-theme.gemspec`

---

### D3. Update CHANGELOG
Add a dated entry for all changes.
**File:** `CHANGELOG.md`

---

## Execution order

| # | Change | Files | Risk |
|---|--------|-------|------|
| 1 | Bug fixes A1–A5 | 5 files | Low |
| 2 | Env-aware robots (B1) | `default.html` | Low |
| 3 | `feed_meta` tag (C4) | `default.html` | Low |
| 4 | `custom-head.html` hook (C1) | `default.html` + new include | Low |
| 5 | GA4 include (C6) | `default.html` + new include + configs | Low |
| 6 | Ordinal dates (B2) | new include + 5 layouts/includes | Medium |
| 7 | Author fallback (B3) | 2 includes | Low |
| 8 | Escape user strings (C5) | 5 files | Low |
| 9 | Replace Sass + Tachyons with plain CSS design system + dark mode (B4, C3) | delete 67 files, 1 new CSS file, 20 templates rewritten, `_config.yml`, gemspec | High |
| 10 | CSS user override file (C2) | new `custom.css` + `default.html` | Low |
| 11 | CSS + HTML minification via jekyll-minifier (B5, B6) | gemspec + Gemfiles + configs | Low |
| 12 | `show_excerpts` toggle (C7) | config + 2 layouts | Low |
| 13 | Remove Alexa config (D1) | 2 config files | Low |
| 14 | Bump gemspec version (D2) | gemspec | Low |
| 15 | Update CHANGELOG (D3) | `CHANGELOG.md` | Low |
| 16 | Commit and push | — | — |
