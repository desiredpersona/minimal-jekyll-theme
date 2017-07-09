---
layout:     post
title:      Post formatting looks pretty damn amazing
subtitle:   Subtitles are optional and look just as good
date:       2016-12-06 13:20:50 +0100
last_modified_at: 2017-07-08 22:02:07 +0100
author:     Desired Persona
header:
    layout: header
    navigation: fancy
    image: /assets/images/mountains-large.jpg
    caption: "[Unsplash](https://unsplash.com)"

categories:
    - jekyll theme
    - post formatting
tags:
    - post
    - header image
---

You’ll find this post in your `_posts` directory. Go ahead and edit it and re-build the site to see your changes. You can rebuild the site in many different ways, but the most common way is to run `jekyll serve`, which launches a web server and auto-regenerates your site when a file is updated.

To add new posts, simply add a file in the `_posts` directory that follows the convention `YYYY-MM-DD-name-of-post.ext` and includes the necessary front matter. Take a look at the source for this post to get an idea about how it works.

***

# Heading One

## Heading Two

### Heading Three

#### Heading Four

##### Heading Five

###### Heading Six

***

# Images

Add images to your post using the markdown image tag.

![northern lights](/assets/images/macbook-small.jpg)

***

# Image with caption

Add captions to your images using the `<figure>` include like so:

```liquid
{% raw %}{% include figure image_path="/assets/images/macbook-small.jpg" alt="Macbook on a table" caption="Macbook on my office desk" %}{% endraw %}
```

This will output the following:

{% include figure image_path="/assets/images/macbook-small.jpg" alt="Macbook on a table" caption="Macbook on my office desk" %}

```html
<figure>
  <img src="/assets/images/macbook-small.jpg" alt="Macbook on a table">
  <figcaption>Macbook on my office desk</figcaption>
</figure>
```

***

# Centered image with caption

It's really simple to center your posts images. Just add the class `{: .tc}` to the end of the `<figure>` include like so.

```liquid
{% raw %}{% include figure image_path="/assets/images/stars-small.jpg" alt="stars" caption="Beautiful night sky." %}{: .tc}{% endraw %}
```

This will output the following:

{% include figure image_path="/assets/images/stars-small.jpg" alt="stars" caption="Beautiful night sky" %}{: .tc}

```html
<figure class="tc">
  <img src="/assets/images/stars-small.jpg" alt="stars">
  <figcaption>Beautiful night sky</figcaption>
</figure>
```

***

# Image aligned left

Align an image to the left by adding the class `{: .tl}` to the end of the `<figure>` include like so:

```liquid
{% raw %}{% include figure image_path="/assets/images/horse.jpg" alt="photo of a horse" caption="Photo of a horse." %}{: .tl}{% endraw %}
```

This will output the following:

{% include figure image_path="/assets/images/horse.jpg" alt="photo of a horse" caption="Photo of a horse" %}{: .tl}

```html
<figure class="tl">
  <img src="/assets/images/horse.jpg" alt="photo of a horse">
  <figcaption>Photo of a horse</figcaption>
</figure>
```

***

# Image aligned right

Align an image to the right by adding the class `{: .tr}` to the end of the `<figure>` include like so:

```liquid
{% raw %}{% include figure image_path="/assets/images/horse.jpg" alt="photo of a horse" caption="Photo of a horse." %}{: .tr}{% endraw %}
```

This will output the following:

{% include figure image_path="/assets/images/horse.jpg" alt="photo of a horse" caption="Photo of a horse" %}{: .tr}

```html
<figure class="tr">
  <img src="/assets/images/horse.jpg" alt="photo of a horse">
  <figcaption>Photo of a horse</figcaption>
</figure>
```

***

# Full post width image

To create a full post width image add the class `{: .w-100 .tc}` to the end of the `<figure>` include like so:

```liquid
{% raw %}{% include figure image_path="/assets/images/mountains-large.jpg" alt="mountain" caption="Mountain landscape" %}{: .w-100 .tc}{% endraw %}
```

This will output the following:

{% include figure image_path="/assets/images/mountains-large.jpg" alt="mountain" caption="Mountain landscape" %}{: .w-100 .tc}

```html
<figure class="w-100 tc">
  <img src="/assets/images/mountains-large.jpg" alt="mountain">
  <figcaption>Mountain landscape</figcaption>
</figure>
```

***

# Full width image

To create a full width image add the class `{: .full .tc}` to the end of the `<figure>` include like so:

(**NB:** You will need to use a large image).

```liquid
{% raw %}{% include figure image_path="/assets/images/porsche-large.jpg" alt="Porsche 911" caption="Porsche 911" %}{: .full .tc}{% endraw %}
```

This will output the following:

{% include figure image_path="/assets/images/porsche-large.jpg" alt="Porsche 911" caption="Porsche 911" %}{: .full .tc}

```html
<figure class="full tc">
  <img src="/assets/images/porsche-large.jpg" alt="Porsche 911">
  <figcaption>Porsche 911</figcaption>
</figure>
```

***

# Responsive Videos

Add a responsive Youtube video using the video include like so:

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

# Blockquotes

Single line blockquote:

>I am not talented, I am obsessed

Multi line blockquote with a cite reference:

>There's no talent here, this is hard work. This is an obsession. Talent does not exist, we are all equal as human beings. You could be anyone if you put in the time. You will reach the top, and that’s that. I am not talented, I am obsessed.
>
> --- <cite>Conor McGregor</cite>

***

# Tables

Create a table like so:

```markdown
| Employee                 | Salary |                                                              |
| ------------------------ | ------ | ------------------------------------------------------------ |
| [John Joe](#)            | $1     | Needs a better salary                                        |
| [Jane Doe](#)            | $10K   | Blogging intern                                              |
| [Joe Bloggs](#)          | $25k   | Photographer                                                 |
| [Jane Bloggs](#)         | $100k  | Marketer & Copywriter                                        |

```

This will output the following:

| Employee                 | Salary |                                                              |
| ------------------------ | ------ | ------------------------------------------------------------ |
| [John Joe](#)            | $1     | Needs a better salary                                        |
| [Jane Doe](#)            | $10K   | Blogging intern                                              |
| [Joe Bloggs](#)          | $25k   | Photographer                                                 |
| [Jane Bloggs](#)         | $100k  | Marketer & Copywriter                                        |


<br>

Create a table with a footer like so:

```markdown
| Header1 | Header2 | Header3 |
|:--------|:-------:|--------:|
| cell1   | cell2   | cell3   |
| cell4   | cell5   | cell6   |
|-----------------------------|
| cell1   | cell2   | cell3   |
| cell4   | cell5   | cell6   |
|=============================|
| Foot1   | Foot2   | Foot3   |
```

This will output the following:

| Header1 | Header2 | Header3 |
|:--------|:-------:|--------:|
| cell1   | cell2   | cell3   |
| cell4   | cell5   | cell6   |
|-----------------------------|
| cell1   | cell2   | cell3   |
| cell4   | cell5   | cell6   |
|=============================|
| Foot1   | Foot2   | Foot3   |


***

# Codeblocks

This Jekyll theme also offers powerful support for code snippets:

```ruby
def print_hi(name)
  puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
```

***

# List Types

## Definition Lists

Definition List Title
:   Definition list division.

Definition
:   An exact statement or description of the nature, scope, or meaning of something: *our definition of what constitutes poetry*.


## Unordered Lists (Nested)

  * List item one
      * List item one
          * List item one
          * List item two
          * List item three
          * List item four
      * List item two
      * List item three
      * List item four
  * List item two
  * List item three
  * List item four


## Ordered List (Nested)

  1. List item one
      1. List item one
          1. List item one
          2. List item two
          3. List item three
          4. List item four
      2. List item two
      3. List item three
      4. List item four
  2. List item two
  3. List item three
  4. List item four

***

# Buttons

You can view the [button documentation here](http://localhost:5000/docs/utility-classes/#buttons){: .dim}.

<a href="https://www.google.ie" class="bg-green br-pill dib f5 f4-ns grow mb2 no-underline ph4 pv1 white">Success</a>


<a href="https://www.google.ie" class="bg-orange br-pill dib f5 f4-ns grow mb2 no-underline ph4 pv1 white">Warning</a>


<a href="https://www.google.ie" class="bg-red br-pill dib f5 f4-ns grow mb2 no-underline ph4 pv1 white">Danger</a>


<a href="https://www.google.ie" class="bg-light-blue br-pill dib f5 f4-ns grow mb2 no-underline ph4 pv1 white">Info</a>


<a href="https://www.google.ie" class="bg-gray br-pill dib f3 f2-ns grow mb2 no-underline ph4 pv3 white">X-Large</a>


<a href="https://www.google.ie" class="bg-gray br-pill dib f4 f3-ns grow mb2 no-underline ph4 pv2 white">Large</a>


<a href="https://www.google.ie" class="bg-gray br-pill dib f5 f4-ns grow mb2 no-underline ph4 pv1 white">Default</a>


<a href="https://www.google.ie" class="bg-gray br-pill dib f6 grow mb2 no-underline ph4 pv1 white">Small</a>


<a href="https://www.google.ie" class="ba bg-white gray br-pill bw1 dib f3 f2-ns grow mb2 no-underline ph4 pv3">X-Large</a>


<a href="https://www.google.ie" class="ba bg-white gray br-pill bw1 dib f4 f3-ns grow mb2 no-underline ph4 pv1">Large</a>


<a href="https://www.google.ie" class="ba bg-white gray br-pill bw1 dib f5 f4-ns grow mb2 no-underline ph4">Default</a>


<a href="https://www.google.ie" class="ba bg-white gray br-pill bw1 dib f6 grow mb2 no-underline ph4">Small</a>

***

# Notices

You can view the [Notices documentation here](http://localhost:5000/docs/utility-classes/#notices){: .dim}.

<p class="bg-light-gray br2 f5 w-100 pa2 pa3-ns"><b>Hey!</b> Minimal Jekyll theme has beautiful notices that are designed to grab a visitors attention.</p>

<p class="bg-lightest-blue br2 f5 w-100 pa2 pa3-ns"><b>Hey!</b> Minimal Jekyll theme has beautiful notices that are designed to grab a visitors attention.</p>

<p class="bg-washed-yellow br2 f5 w-100 pa2 pa3-ns"><b>Hey!</b> Minimal Jekyll theme has beautiful notices that are designed to grab a visitors attention.</p>

<p class="bg-washed-red br2 f5 w-100 pa2 pa3-ns"><b>Hey!</b> Minimal Jekyll theme has beautiful notices that are designed to grab a visitors attention.</p>

<p class="bg-washed-green br2 f5 w-100 pa2 pa3-ns"><b>Hey!</b> Minimal Jekyll theme has beautiful notices that are designed to grab a visitors attention.</p>

***

# HTML Tags

## Address Tag

Create an address like so:

```html
<address>
  1 Infinite Loop<br/> Cupertino, CA 95014<br/> United States
</address>
```
This will output the following:

<address>
  1 Infinite Loop<br/> Cupertino, CA 95014<br/> United States
</address>

***

## Links / Anchor Tag

### Primary Link

Create a link with a custom link color set in `_sass/_variables.scss` like so:

```markdown
[This is a link](http://google.com "Google")
```

This will output the following:

[This is a link](http://google.com "Google")

***

### Dim on hover

To dim a link on hover, add the dim class:


```markdown
[Dim on hover](http://google.com){: .dim}
```

This will output the following:

[Dim on hover](http://google.com){: .dim}

***

### Primary Link without underline

Create a link without underline like so:

```markdown
[Link without underline](http://google.com){: .link}
```

This will output the following:

[Link without underline](http://google.com){: .link}

***

### Underline on hover

To add an underline on hover and focus, use the class 'underline-hover':

```markdown
[Underline on hover](http://google.com){: .link .underline-hover}
```

This will output the following:

[Underline on hover](http://google.com){: .link .underline-hover}

***

### Blue Link

Create a blue link like so:

```markdown
[blue link created with markdown](http://google.com){: .link .dim .underline .blue}
```

This will output the following:

[blue link created with markdown](http://google.com){: .link .dim .underline .blue}

***

### Black Link

Create a black link like so:

```markdown
[black link created with markdown](http://google.com){: .link .dim .underline .black}
```

This will output the following:

[black link created with markdown](http://google.com){: .link .dim .underline .black}

***

## Abbreviation Tag

The abbreviation CSS stands for "Cascading Style Sheets".

*[CSS]: Cascading Style Sheets

### Cite Tag

"Code is poetry." ---<cite>Automattic</cite>

### Strike Tag

This tag will let you <strike>strikeout text</strike>.

### Emphasize Tag

The emphasize tag should *italicize* text.

## Insert Tag

This tag should denote updated text <ins>inserted</ins> in a blog post.

## Keyboard Tag

This scarcely known <kbd>keyboard tag</kbd> emulates represents user input and produces an inline element displayed in the browser's default monospace font, which is usually styled like the `<code>` tag.

## Code Tag

Its probably a really good idea to wrap your code within code tags. This is how you do it `<title>HTML for Baby's</title>`. You don't want any surprises.

## Preformatted Tag

This tag styles large blocks of code

```css
.ba {
    border-style: solid;
    border-width: 1px;
}
```

## Strong Tag

This tag makes **bold text, try not to overuse it tho.**

## Subscript Tag

My girlfriend is a medical scientist, so i bet she knows what C<sub>2</sub>H<sub>6</sub>O and C<sub>6</sub>H<sub>12</sub>O<sub>6</sub> means, right Rachel? Anyway the subscript tag `<sub></sub>` should have pushed the numbers down.

### Superscript Tag

Oh more science yay! Albert Einstein E = mc<sup>2</sup>, The superscript tag `<sup></sup>` should lift the 2 up.

## Variable Tag

The variable tag `<var></var>`  allows you to denote <var>variables</var>.

## Footnotes
I have more [^1] to say up here.

## Horizontal Rules

To create a horizontal rule, just use `***` on a new line anywhere in your posts like so

***

## Mark Tag

The <mark>mark tag allows you to highlight parts </mark> of your text.

[^1]: To say down here.




Check out the [Jekyll docs][jekyll-docs] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll Talk][jekyll-talk].

[jekyll-docs]: http://jekyllrb.com/docs/home
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/
