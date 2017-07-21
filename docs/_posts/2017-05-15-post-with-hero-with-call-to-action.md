---
layout: post
title:  Post title with hero image with CTA
subtitle: Adding subtitles couldn't be easier
date:   2017-05-15 16:20:50 +0100
author: Desired Persona

header:
    layout: hero
    image: "/assets/images/evening.jpg"
    caption: "[Unsplash](https://unsplash.com)"
    cta: "Call-to-action"
    cta_url: https://www.desiredpersona.com/themes/
    cta_class: white bg-red bb bw1 br2 b--dark-red
    class: bg-darken-25 bg-darken-0-ns

categories:
    - jekyll theme
    - post formatting
tags:
    - post
    - header
---

To add a hero image with a call-to-action button to any blog post header, simply add the following in that posts YAML front-matter.

```yaml
header:
    layout: hero
    image: "/assets/images/evening.jpg"
    caption: "[Unsplash](https://unsplash.com)"
    cta: "Call-to-action"
    cta_url: https://www.desiredpersona.com/themes/
    cta_class: white bg-red bb bw1 br2 b--dark-red
    class: bg-darken-25 bg-darken-0-ns
```

- `layout:` Choose `hero` or `header`.
- `image:` Set a background image.
- `caption:` Create captions with support for markdown urls.
- `cta:` Allows you to create a call-to-action.
- `cta_url:` Call-to-action link. External links will open in a new tab.
- `cta_class:` Overwrite the themes default CTA button classes on any page. Control the text color, button color, button shape and button border color.
- `class:` Overwrite the themes default header classes on any page. You can set background overlays for mobile, tablet and desktop.

I highly recommend you take a look at all the features of this theme. I think you will be blown away.
