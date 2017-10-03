---
layout: post
title: Post title with hero image and CTA
subtitle: Adding subtitles couldn't be easier
date: 2017-05-15 16:20:50 +0100
author: Desired Persona

header:
    layout: hero
    image: "/assets/images/evening.jpg"
    caption: "[Unsplash](https://unsplash.com)"
    class: bg-darken-25 bg-darken-0-ns
    cta:
        text: "Call-to-action"
        url: https://www.desiredpersona.com/themes/
        class: btn btn--secondary

categories:
    - post formatting
tags:
    - header
---

To add a hero image with a call-to-action button to any blog post header, simply add the following in that posts YAML front-matter.

```yaml
header:
    layout: hero # Choose hero or header.
    image: "/assets/images/evening.jpg" # Set a background image.
    vh: vh-50 vh-75-m vh-100-l # Set a custom vertical height for mobile/tablet/desktop.
    caption: "[Unsplash](https://unsplash.com)" # Create a header image caption. Support for markdown links.
    class: bg-darken-25 bg-darken-0-ns # Overwrite the themes default header classes on any page. Easily set background overlays for mobile, tablet and desktop.
    cta: 
        text: "Call-to-action" # Create a call-to-action.
        url: https://www.desiredpersona.com/themes/ # Call-to-action link. URL's starting with 'http' will open in a new tab automatically.
        class: btn btn--secondary # Use any theme button class.
```

I highly recommend you take a look at all the features of this theme.
