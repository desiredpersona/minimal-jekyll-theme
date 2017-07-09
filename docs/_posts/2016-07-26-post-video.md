---
layout: post
title: "Post with responsive videos"
date:   2016-07-25 13:20:50 +0100
author: Desired Persona
categories:
  - post formatting
tags:
  - video
---

Here are a few examples of how to add responsive video to a post or page.

### Youtube

Add a responsive Youtube video embed using the video include like so:

```liquid
{% raw %}{% include video src="https://www.youtube.com/embed/V2q7-1XppDM" %}{% endraw %}
```

This will output the following:

{% include video src="https://www.youtube.com/embed/V2q7-1XppDM" %}

```html
<div class="aspect-ratio aspect-ratio--16x9 w-100 mb4">
  <iframe class="aspect-ratio--object" src="https://www.youtube.com/embed/V2q7-1XppDM" frameborder="0" allowfullscreen></iframe>
</div>
```

***

### Vimeo

Add a responsive Vimeo video embed using the video include like so:

```liquid
{% raw %}{% include video src="https://player.vimeo.com/video/159104382" %}{% endraw %}
```

This will output the following:

{% include video src="https://player.vimeo.com/video/159104382" %}

```html
<div class="aspect-ratio aspect-ratio--16x9 w-100 mb4">
  <iframe class="aspect-ratio--object" src="https://player.vimeo.com/video/159104382" frameborder="0" allowfullscreen></iframe>
</div>
```


***

Responsive videos look great with Minimal Jekyll Theme. Yep i'm a big deadmau5 fan.