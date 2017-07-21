---
layout: post
title:  Post title with hero image & call-to-action
subtitle: Adding subtitles couldn't be easier
date:   2017-05-15 16:20:50 +0100
author: Desired Persona

header:
    layout: hero
    image: "/assets/images/evening.jpg"
    caption: "[Unsplash](https://unsplash.com)"
    cta: "Call-to-action"
    cta_url: https://www.desiredpersona.com/themes/

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
    class: 
    - white
    - bg-green
    - bb bw1 br2 b--dark-green
```

- `layout:` Choose `hero` or `header`.
- `image:` Set a background image.
- `caption:` Create captions with support for markdown urls.
- `cta:` allows you to create a call-to-action.
- `cta_url:` Call-to-action link. External links will open in a new tab.
- `class:` Set the text color (Optional). Set the button color. (Optional). Set the button border color. (Optional) Otherwise default classes set in `_variables.scss` are used.

I highly recommend you take a look at all the features of this theme. I think you will be blown away.
