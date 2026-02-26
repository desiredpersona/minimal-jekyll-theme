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

### B4. CSS design tokens
Nostalgia defines all design values as CSS custom properties on `:root`, making it trivial
for users to retheme without touching SCSS. Add a new `_sass/_tokens.scss` partial that
exposes key theme values, and import it first so `_theme.scss` can reference them.

```scss
// _sass/_tokens.scss
:root {
  --font-family:      #{$font-family};
  --code-font-family: #{$code-font-family};
  --color-text:       #333;
  --color-text-muted: #777;
  --color-link:       #{$link};
  --color-link-hover: #{$hover};
  --color-bg:         #fff;
  --color-bg-subtle:  #f4f4f4;
  --color-border:     #e0e0e0;
  --color-code-bg:    #{$code-background-color};
  --content-width:    48rem;
}
```

**New file:** `_sass/_tokens.scss`
**Updated file:** `assets/css/minimal.scss` (add `@import "tokens"` before `@import "theme"`)

---

### B5. Print stylesheet
Nostalgia ships a print stylesheet that hides navigation and resets colours for print.

**New file `_sass/_print.scss`:**
```scss
@media print {
  header, footer, nav,
  .share-icons, .post-comments { display: none !important; }
  body  { font-size: 12pt; color: #000; background: #fff; }
  a     { color: #000; text-decoration: underline; }
  a[href]::after { content: " (" attr(href) ")"; font-size: 0.8em; }
  pre, blockquote { page-break-inside: avoid; }
  h1, h2, h3      { page-break-after:  avoid; }
  img             { max-width: 100%; }
}
```

**New file:** `_sass/_print.scss`
**Updated file:** `assets/css/minimal.scss` (add `@import "print"` at the end)

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

### C2. CSS override hooks — `custom-variables.scss` and `custom-styles.scss`
Minima provides two empty user-facing SCSS files:

- `_sass/minima/custom-variables.scss` — override Sass variables before base styles compile
- `_sass/minima/custom-styles.scss` — add/override CSS rules after base styles

Add equivalent files for this theme:

**New file `_sass/_custom-variables.scss`:** (empty, with comment)
```scss
// Override theme variables here.
// This file is imported before _variables.scss takes effect.
// Example:
//   $link: #005ea2;
```

**New file `_sass/_custom-styles.scss`:** (empty, with comment)
```scss
// Add or override styles here.
// This file is imported after all theme styles have loaded.
```

**Updated file:** `assets/css/minimal.scss`
- Import `custom-variables` before `variables`
- Import `custom-styles` at the very end

---

### C3. Dark mode support (`prefers-color-scheme`)
Minima's `auto` skin uses CSS custom properties + a `@media (prefers-color-scheme: dark)`
block to automatically switch to a dark palette based on the OS preference.

With CSS design tokens already in place (B4), add a dark palette override in
`_sass/_tokens.scss`:

```scss
@media (prefers-color-scheme: dark) {
  :root {
    --color-text:      #d4d4d4;
    --color-text-muted: #999;
    --color-link:      #74b9ff;
    --color-link-hover:#a29bfe;
    --color-bg:        #1a1a1a;
    --color-bg-subtle: #2d2d2d;
    --color-border:    #444;
    --color-code-bg:   #2d2d2d;
  }
}
```

Users who prefer to force light/dark mode can override `--color-bg` etc. in their own
`_sass/_custom-styles.scss`.

**Updated file:** `_sass/_tokens.scss`

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
| 9 | CSS tokens + dark mode (B4, C3) | new partial + `minimal.scss` | Medium |
| 10 | Print styles (B5) | new partial + `minimal.scss` | Low |
| 11 | CSS override hooks (C2) | 2 new partials + `minimal.scss` | Low |
| 12 | `show_excerpts` toggle (C7) | config + 2 layouts | Low |
| 13 | Remove Alexa config (D1) | 2 config files | Low |
| 14 | Bump gemspec version (D2) | gemspec | Low |
| 15 | Update CHANGELOG (D3) | `CHANGELOG.md` | Low |
| 16 | Commit and push | — | — |
