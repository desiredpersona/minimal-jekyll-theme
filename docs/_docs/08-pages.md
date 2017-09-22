---
layout: page

sidebar:
  title: Documentation
  navigation: docs

title:  Page layouts
date:   2017-01-11 14:47:50 +0100
author: Desired Persona
post_meta: false
permalink: /docs/page-layouts/
---

### Archive Pages
This theme fully supports [Jekyll Archives](https://github.com/jekyll/jekyll-archives){:target="_blank"} plugin.


1. Update your sites `_config.yml` file with the required settings.

```yaml
# Jekyll Archives Settings https://github.com/jekyll/jekyll-archives
jekyll-archives:
  enabled:
     - categories
     - tags
     - year
     - month
     - day
  layout: 'archive'
  permalinks:
    year: '/:year/'
    month: '/:year/:month/'
    day: '/:year/:month/:day/'
    tag: '/tag/:name/'
    category: '/category/:name/'
```

2. Copy `archive.html` page from `/docs/pages/` demo folder in to your sites `/pages/` directory.

3. Copy `category.html` and `tag.html` pages from `/docs/pages/` demo folder in to your sites `/pages/` directory. These pages will auto update all categories and tags automatically every time you build your site.

BTW the year, month & day archive pages are auto-generated for you using the `archive.html` layout.
