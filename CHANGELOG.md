## 11-10-2017
- Moved horizontal ellipsis `&hellip;` from theme.yml to home.html layout.

## 07-10-2017
- Created a section for media queries in _theme.scss
- Decreased footnotes fontsize and added color variable.

## 04-10-2017
- Released theme version 0.2.1
- Updated gemspec.
- Added MIT license badge.

## 03-10-2017
- Added line height to hero cta.
- Added `<time>` tags to post_meta, archive page and archive layout. 
- Shell commands now include "$" symbol.
- Changed light button hover text to black for improved visibility.
- Improved the readability of the theme.

## 29-09-2017
- MIT License

## 25-09-2017
- Released theme version 0.2.0

## 22-09-2017
- Updated mark tag color in `_variables.scss`.
- Added relative_url support to author.picture and author.url
- Fixed navigation baseurl issue. `append: site.baseurl` issue caused by `contains` not working with `or`. Thanks to @ashmaroli for solution.
- figure include now removes `class=""` if no class has been set.
- Added markdown documentation.
- Updated theme introduction.

## 16-09-2017
- Google, Bing, Alexa and Yandex site verification now supported via jekyll-seo-tag plugin.
- Canonical link now supported via jekyll-seo-tag plugin.
- Removed category meta tag from `head.html`.
- Added support for custom vertical screen height in header.
- `page.header.cta.class` now support new theme button classes. (Removed theme cta default styles from theme.yml file.)
- Added option to set a header background color.
- Added Google Analytics async tracking with fallback setting in `_config.yml` for older browser support.
- Added support for Facebook Pixel.
- Added sibebar support for Page layout.
- Added support for HTML lang attribute in `head.html`.
- Improved header navigation menu font size, weight & position on mobile/tablet.
- Update demo site docs.
- Added theme introduction to docs.
- Added markdown docs.
- Updated theme variables
- Removed border-radius from Alerts (looked too similar to buttons).

## 15-09-2017
- Added full support for jekyll-archives plugin.
- Redesigned archive link on home.html layout as a button for increased visibility.
- Renamed `author.avatar` to `author.picture` in `authors.yml` to fully support jekyll-seo-tag plugin.
- Update tachyons-sass.
- Renamed `_custom.scss` to `_theme.scss`.

## 21-07-2017
- Improved the readability of category and tag pages with new design.
- Improved the readability of author bio width in `author_bio.html` and `post_meta.html`.
- Improved position of author avatar in `post-meta.html` on mobile.
- Removed unnecessary flexbox classes in `author_bio.html` and `post_meta.html`.
- Updated "tachyons-background-overlays" to v1.1.0
- Fix header `cta_class:`. Easily change the header CTA button classes of any page.

## 15-07-2017
- Update to Jekyll 3.5.1

## 15-07-2017
- Improved header margin on page layout
- Improved header margin on post layout when post_meta = false

## 09-07-2017
- Released theme version 0.1.3
- Improved header hero padding on mobile.
- Updated about.md with theme intro that showcases post layouts.
- Update attribution link description.

## 08-07-2017
- Added notices documentation.
- Added buttons documentation.

## 02-07-2017
- Added paragraph option to header hero

## 27-06-2017
- Improved header vertical padding on mobile.
- Updated footer attribution link.
- Updated demo gemfile to Jekyll 3.5.0
- Updated README.md to recommend using Jekyll 3.5.0 or higher. Reasons: gems are now officially called plugins.
- Removed padding(pr3) from navigation on mobile view. 

## 26-06-2017
- Added tachyons-background-overlays.scss
- Replace vh-50 with vh-50-m on hero layout to allow header to expand if necessary to fit text and cta on mobile.
- Updated archive layout to use flexbox.
- Update default theme button design.

## 21-06-2017
- Updated install documentation.

## 18-06-2017
- Changed default buttons to Pill shape to match new design.

## 17-06-2017
- Added author documentation.

## 16-06-2017
- Released theme version 0.1.2
- Update theme gemspec.
- Set theme `_config` to `port:4000`.
- Changed example demo `_config` to `port:5000` so you can view the theme demos while also using the theme on your site.

## 15-06-2017
- Fix archive url in `home.html`.
- Remove old post layout.

## 14-06-2017
- Released theme version 0.1.1
- Redesign.
