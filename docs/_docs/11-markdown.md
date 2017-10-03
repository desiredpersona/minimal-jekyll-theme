---
layout: page

sidebar:
  title: Documentation
  navigation: docs

title: Markdown 101
date: 2017-07-04 14:47:50 +0100
last_modified_at: 2017-09-13 05:24:00 +0100
author: Desired Persona
post_meta: false
permalink: /docs/markdown/
---

This documentation covers everything the theme can do in markdown.

<h2 id="headings">Headings</h2>
# Heading One

## Heading Two

### Heading Three

#### Heading Four

##### Heading Five

###### Heading Six

```markdown
# Heading One

## Heading Two

### Heading Three

#### Heading Four

##### Heading Five

###### Heading Six
```

<h2 id="images">Images</h2>

![northern lights]({{ "/assets/images/stars-small.jpg" | relative_url }})

Add images to your post using the markdown.

Input:

```markdown
![northern lights](/assets/images/stars-small.jpg)
```

If you are using `site.baseurl` in `_config.yml` you will need to use the following format.

{% highlight markdown %}{% raw %}
![northern lights]({{ "/assets/images/stars-small.jpg" | relative_url }})
{% endraw %}{% endhighlight%}

Output:
```html
<img src="/minimal-jekyll-theme/assets/images/stars-small.jpg" alt="northern lights">
```


<h3 id="image-caption">Image with caption</h3>

{% include figure image_path="/assets/images/macbook-small.jpg" alt="Macbook on a table" caption="Macbook on my office desk" %}

Add a caption to your image using the `<figure>` include.

Input: 

```liquid
{% raw %}{% include figure image_path="/assets/images/macbook-small.jpg" alt="Macbook on a table" caption="Macbook on my office desk" %}{% endraw %}
```

Output:

```html
<figure>
  <img src="/assets/images/macbook-small.jpg" alt="Macbook on a table">
  <figcaption>Macbook on my office desk</figcaption>
</figure>
```

<h3 id="centered-image" class="tc">Centered image with caption</h3>

{% include figure image_path="/assets/images/stars-small.jpg" alt="stars" caption="Beautiful night sky" %}{: .tc}

Center images.


Input:

```liquid
{% raw %}{% include figure image_path="/assets/images/stars-small.jpg" alt="stars" caption="Beautiful night sky." %}{: .tc}{% endraw %}
```

Output:

```html
<figure class="tc">
  <img src="/assets/images/stars-small.jpg" alt="stars">
  <figcaption>Beautiful night sky</figcaption>
</figure>
```


<h3 id="image-left">Image aligned left</h3>

{% include figure image_path="/assets/images/horse.jpg" alt="photo of a horse" caption="Photo of a horse" %}{: .tl}

Align an image to the left.

Input:

```liquid
{% raw %}{% include figure image_path="/assets/images/horse.jpg" alt="photo of a horse" caption="Photo of a horse." %}{: .tl}{% endraw %}
```

Output:

```html
<figure class="tl">
  <img src="/assets/images/horse.jpg" alt="photo of a horse">
  <figcaption>Photo of a horse</figcaption>
</figure>
```


<h3 id="image-right" class="tr">Image aligned right</h3>

{% include figure image_path="/assets/images/horse.jpg" alt="photo of a horse" caption="Photo of a horse" %}{: .tr}

Align an image to the right.

Input:

```liquid
{% raw %}{% include figure image_path="/assets/images/horse.jpg" alt="photo of a horse" caption="Photo of a horse." %}{: .tr}{% endraw %}
```

Output:

```html
<figure class="tr">
  <img src="/assets/images/horse.jpg" alt="photo of a horse">
  <figcaption>Photo of a horse</figcaption>
</figure>
```


<h3 id="image-post-width">Post width image</h3>

{% include figure image_path="/assets/images/mountains-large.jpg" alt="mountain" caption="Mountain landscape" %}{: .w-100 .tc}

Make an image fill the width of a post/page.

Input:

```liquid
{% raw %}{% include figure image_path="/assets/images/mountains-large.jpg" alt="mountain" caption="Mountain landscape" %}{: .w-100 .tc}{% endraw %}
```

Output:

```html
<figure class="w-100 tc">
  <img src="/assets/images/mountains-large.jpg" alt="mountain">
  <figcaption>Mountain landscape</figcaption>
</figure>
```


<h3 id="image-full-width">Full width image</h3>

{% include figure image_path="/assets/images/porsche-large.jpg" alt="Porsche 911" caption="Porsche 911" %}{: .full .tc}

To create a full width image add the class `{: .full .tc}` to the end of the `<figure>` include. Please use a large image file.

Input:

```liquid
{% raw %}{% include figure image_path="/assets/images/porsche-large.jpg" alt="Porsche 911" caption="Porsche 911" %}{: .full .tc}{% endraw %}
```

Output:

```html
<figure class="full tc">
  <img src="/assets/images/porsche-large.jpg" alt="Porsche 911">
  <figcaption>Porsche 911</figcaption>
</figure>
```

***


<h2 id="responsive-video">Responsive video</h2>

### YouTube

{% include video src="https://www.youtube.com/embed/V2q7-1XppDM" %}

Add a responsive Youtube video by using the video include.

Input:

```liquid
{% raw %}{% include video src="https://www.youtube.com/embed/V2q7-1XppDM" %}{% endraw %}
```

Output:

```html
<div class="aspect-ratio aspect-ratio--16x9 w-100 mb4">
  <iframe class="aspect-ratio--object" src="https://www.youtube.com/embed/V2q7-1XppDM" frameborder="0" allowfullscreen></iframe>
</div>
```

### Vimeo

{% include video src="https://player.vimeo.com/video/159104382" %}

Add a responsive Vimeo video by using the video include.

Input:

```liquid
{% raw %}{% include video src="https://player.vimeo.com/video/159104382" %}{% endraw %}
```

Output:

```html
<div class="aspect-ratio aspect-ratio--16x9 w-100 mb4">
  <iframe class="aspect-ratio--object" src="https://player.vimeo.com/video/159104382" frameborder="0" allowfullscreen></iframe>
</div>
```
***


<h2 id="blockquotes">Blockquotes</h2>


Single line blockquote.

>I am not talented, I am obsessed

Input:

```markdown
>I am not talented, I am obsessed
```

Output:

```html
<blockquote>
  <p>I am not talented, I am obsessed</p>
</blockquote>
```

<br>
Multi line blockquote with a cite reference.

>There's no talent here, this is hard work. This is an obsession. Talent does not exist, we are all equal as human beings. You could be anyone if you put in the time. You will reach the top, and that’s that. I am not talented, I am obsessed.
>
> --- <cite>Conor McGregor</cite>

Input:

```markdown
>There's no talent here, this is hard work. This is an obsession. Talent does not exist, we are all equal as human beings. You could be anyone if you put in the time. You will reach the top, and that’s that. I am not talented, I am obsessed.
>
> --- <cite>Conor McGregor</cite>
```

Output:

```html
<blockquote>
  <p>There’s no talent here, this is hard work. This is an obsession. Talent does not exist, we are all equal as human beings. You could be anyone if you put in the time. You will reach the top, and that’s that. I am not talented, I am obsessed.</p>

  <p>— <cite>Conor McGregor</cite></p>
</blockquote>
```

***

<h2 id="tables">Tables</h2>

Minimal table

Input:

```markdown
| Employee                 | Salary |                            |
| ------------------------ | ------ | -------------------------- |
| [John Joe](#)            | $1     | Needs a better salary      |
| [Jane Doe](#)            | $10K   | Blogging intern            |
| [Joe Bloggs](#)          | $25k   | Photographer               |
| [Jane Bloggs](#)         | $100k  | Marketer & Copywriter      |

```

Output:

| Employee                 | Salary |                            |
| ------------------------ | ------ | -------------------------- |
| [John Joe](#)            | $1     | Needs a better salary      |
| [Jane Doe](#)            | $10K   | Blogging intern            |
| [Joe Bloggs](#)          | $25k   | Photographer               |
| [Jane Bloggs](#)         | $100k  | Marketer & Copywriter      |


<br>

Table with a footer.

Input:

```markdown
| Header1  | Header2 | Header3  |
|:---------|:-------:|---------:|
| cell1    | cell2   | cell3    |
| cell4    | cell5   | cell6    |
|-------------------------------|
| cell1    | cell2   | cell3    |
| cell4    | cell5   | cell6    |
|===============================|
| Footer1  | Footer2 | Footer3  |
```

Output:

| Header1  | Header2 | Header3  |
|:---------|:-------:|---------:|
| cell1    | cell2   | cell3    |
| cell4    | cell5   | cell6    |
|-------------------------------|
| cell1    | cell2   | cell3    |
| cell4    | cell5   | cell6    |
|===============================|
| Footer1  | Footer2 | Footer3  |

***

<h2 id="codeblocks">Codeblocks</h2>

Input:

{% highlight text %}
```ruby
def show
  @widget = Widget(params[:id])
  respond_to do |format|
    format.html # show.html.erb
    format.json { render json: @widget }
  end
end
```
{% endhighlight %}

Output:

``` ruby
def show
  @widget = Widget(params[:id])
  respond_to do |format|
    format.html # show.html.erb
    format.json { render json: @widget }
  end
end
```


### Codeblock with line numbers

Input:

{% highlight text %}
{% raw %}{% highlight ruby linenos %}
def show
  @widget = Widget(params[:id])
  respond_to do |format|
    format.html # show.html.erb
    format.json { render json: @widget }
  end
end
{% endhighlight %}{% endraw %}
{% endhighlight %}

Output:

{% highlight ruby linenos %}
def show
  @widget = Widget(params[:id])
  respond_to do |format|
    format.html # show.html.erb
    format.json { render json: @widget }
  end
end
{% endhighlight %}


### Command line prompt

Input:

```text
{% raw %}{% highlight shell %}
gem install jekyll
{% endhighlight %}{% endraw %}
```

Output:

Notice the "$" command line symbol is added for you automatically.

{% highlight shell %}
gem install jekyll
{% endhighlight %}

### Code in a paragraph

Input:

```
{% raw %}This is what `<html>` code looks like in a paragraph of text.{% endraw %}
```

Output:

This is what `<html>` code looks like in a paragraph of text.

***


<h2 id="lists">List Types</h2>


### Definition Lists

Input:

```markdown
Definition
:   An exact statement or description of the nature, scope, or meaning of something: *our definition of what constitutes poetry*.
```

Output:

Definition
:   An exact statement or description of the nature, scope, or meaning of something: *our definition of what constitutes poetry*.

<br>

### Unordered Lists (Nested)

Input:

```markdown
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
```

Output:

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

<br>

### Ordered List (Nested)

Input:

```markdown
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
```

Output:

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


<h2 id="buttons">Buttons</h2>

A small collection predefined button styles, each serving its own semantic purpose.

[Primary](#){: .btn .btn--primary}
[Secondary](#){: .btn .btn--secondary}
[Success](#){: .btn .btn--success}
[Warning](#){: .btn .btn--warning}
[Danger](#){: .btn .btn--danger}
[Info](#){: .btn .btn--info}
[Light](#){: .btn .btn--light}
[Dark](#){: .btn .btn--dark}

```markdown
{% raw %}[primary](#){: .btn .btn--primary}{% endraw %}
{% raw %}[secondary](#){: .btn .btn--secondary}{% endraw %}
{% raw %}[success](#){: .btn .btn--success}{% endraw %}
{% raw %}[warning](#){: .btn .btn--warning}{% endraw %}
{% raw %}[danger](#){: .btn .btn--danger}{% endraw %}
{% raw %}[info](#){: .btn .btn--info}{% endraw %}
{% raw %}[light](#){: .btn .btn--light}{% endraw %}
{% raw %}[dark](#){: .btn .btn--dark}{% endraw %}
```


<h2 id="button-outline">Outline buttons</h2>

An alternative collection of predefined button styles.

[Primary](#){: .btn .btn-outline--primary}
[Secondary](#){: .btn .btn-outline--secondary}
[Success](#){: .btn .btn-outline--success}
[Warning](#){: .btn .btn-outline--warning}
[Danger](#){: .btn .btn-outline--danger}
[Info](#){: .btn .btn-outline--info}
[Light](#){: .btn .btn-outline--light}
[Dark](#){: .btn .btn-outline--dark}

```markdown
{% raw %}[primary](#){: .btn .btn-outline--primary}{% endraw %}
{% raw %}[secondary](#){: .btn .btn-outline--secondary}{% endraw %}
{% raw %}[success](#){: .btn .btn-outline--success}{% endraw %}
{% raw %}[warning](#){: .btn .btn-outline--warning}{% endraw %}
{% raw %}[danger](#){: .btn .btn-outline--danger}{% endraw %}
{% raw %}[info](#){: .btn .btn-outline--info}{% endraw %}
{% raw %}[light](#){: .btn .btn-outline--light}{% endraw %}
{% raw %}[dark](#){: .btn .btn-outline--dark}{% endraw %}
```


<h2 id="button-sizes">Button sizes</h2>

[Extra Large](#){: .btn .btn-outline--primary .btn--x-large} [Extra Large](#){: .btn .btn--primary .btn--x-large}

```markdown
{% raw %}[extra large](#){: .btn .btn-outline--primary .btn--x-large}{% endraw %}
{% raw %}[extra large](#){: .btn .btn--primary .btn--x-large}{% endraw %}
```

[Large](#){: .btn .btn-outline--primary .btn--large} [Large](#){: .btn .btn--primary .btn--large}

```markdown
{% raw %}[large](#){: .btn .btn-outline--primary .btn--large}{% endraw %}
{% raw %}[large](#){: .btn .btn--primary .btn--large}{% endraw %}
```

[Medium](#){: .btn .btn-outline--primary} [Medium](#){: .btn .btn--primary}

```markdown
{% raw %}[medium](#){: .btn .btn-outline--primary}{% endraw %}
{% raw %}[medium](#){: .btn .btn--primary}{% endraw %}
```

[small](#){: .btn .btn-outline--primary .btn--small} [small](#){: .btn .btn--primary .btn--small}

```markdown
{% raw %}[small](#){: .btn .btn-outline--primary .btn--small}{% endraw %}
{% raw %}[small](#){: .btn .btn--primary .btn--small}{% endraw %}
```

Create block level buttons that span the full width of a parent.

[Block level button](#){: .btn .btn--primary .btn--block} [Block level button](#){: .btn .btn-outline--primary .btn--block}

```markdown
{% raw %}[Block level button](#){: .btn .btn--primary .btn--block}{% endraw %}
{% raw %}[Block level outline button](#){: .btn .btn-outline--primary .btn--block}{% endraw %}
```
Add classes for uppercase, capitalised and lowercase buttons.

[uppercase](#){: .btn .btn--primary .ttu} [capitalised](#){: .btn .btn-outline--primary .ttc} [LOWERCASE](#){: .btn .btn--primary .ttl}

```markdown
{% raw %}[uppercase](#){: .btn .btn--primary .ttu}{% endraw %}
{% raw %}[capitalised](#){: .btn .btn-outline--primary .ttc}{% endraw %}
{% raw %}[LOWERCASE](#){: .btn .btn--primary .ttl}{% endraw %}
```

Animate buttons with some hover effects

[grow](#){: .btn .btn-outline--primary .grow} [glow](#){: .btn .btn--primary .glow .o-80} [dim](#){: .btn .btn--primary .dim}

```markdown
[grow](#){: .btn .btn-outline--primary .grow}
[glow](#){: .btn .btn--primary .glow .o-80}
[dim](#){: .btn .btn--primary .dim}
```

***


<h2 id="notices">Alerts</h2>

Provide contextual feedback messages for typical user actions with the handful of available and flexible alert messages


Beautiful notices that are designed to grab a visitors attention. 
{: .alert .alert--primary}

Beautiful notices that are designed to grab a visitors attention. 
{: .alert .alert--secondary}

Beautiful notices that are designed to grab a visitors attention. 
{: .alert .alert--success}

Beautiful notices that are designed to grab a visitors attention. 
{: .alert .alert--warning}

Beautiful notices that are designed to grab a visitors attention. 
{: .alert .alert--danger}

Beautiful notices that are designed to grab a visitors attention. 
{: .alert .alert--info}

Beautiful notices that are designed to grab a visitors attention. 
{: .alert .alert--light}

Beautiful notices that are designed to grab a visitors attention.
{: .alert .alert--dark}


```markdown
your text here
{: .alert .alert--primary}

your text here
{: .alert .alert--secondary}

your text here
{: .alert .alert--success}

your text here
{: .alert .alert--warning}

your text here
{: .alert .alert--danger}

your text here
{: .alert .alert--info}

your text here
{: .alert .alert--light}

your text here
{: .alert .alert--dark}
```

***


<h2 id="links">Links</h2>

Mix and match different css classes to create different link styles.

[Primary link](#) - Set primary colors in `variables.scss`.

[Open link in new tab](https://google.com){:target="_blank"}

[Link title on hover](# "Google")

[Dim on hover](#){: .hover-black .dim}

[Link without underline](#){: .link}

[Underline on hover](#){: .link .underline-hover .hover-black}



You can mix and match colours from `_skins.scss` or create your own classes.

[blue link](#){: .blue .hover-blue}
[black link](#){: .black .hover-black}
[green link](#){: .green .hover-green}
[gray link](#){: .gray .hover-gray}
[yellow link](#){: .yellow .hover-yellow}
[gold link](#){: .gold .hover-gold}
[orange](#){: .orange .hover-orange}
[light-purple link](#){: .light-purple .hover-light-purple}
[pink/ hover light pink](#){: .pink .hover-light-pink}
[dark-pink/ hover hot pink](#){: .dark-pink .hover-hot-pink}
[red link/ hover dark red](#){: .red .hover-dark-red}



```markdown
[Primary link](#)
[Open link in new tab](https://google.com){:target="_blank"}
[Link title on hover](# "Google")
[Dim on hover](#){: .dim}
[Link without underline](#){: .link}
[Underline on hover](#){: .link .underline-hover .hover-black}
[blue link](#){: .blue .hover-blue}
[black link](#){: .black .hover-black}
[green link](#){: .green .hover-green}
[gray link](#){: .gray .hover-gray}
[yellow link](#){: .yellow .hover-yellow}
[gold link](#){: .gold .hover-gold}
[orange](#){: .orange .hover-orange}
[light-purple link](#){: .light-purple .hover-light-purple}
[pink/ hover light pink](#){: .pink .hover-light-pink}
[dark-pink/ hover hot pink](#){: .dark-pink .hover-hot-pink}
[red link/ hover dark red](#){: .red .hover-dark-red}
```

***


<h2 id="tags">HTML Tags</h2>

### Address Tag

Input:

```html
<address>
  1 Infinite Loop<br/> Cupertino, CA 95014<br/> United States
</address>
```

Output:

<address>
  1 Infinite Loop<br/> Cupertino, CA 95014<br/> United States
</address>

***

### Abbreviation Tag

Input:

```markdown
The abbreviation CSS stands for "Cascading Style Sheets".

*[CSS]: Cascading Style Sheets
```

Output:

The abbreviation CSS stands for "Cascading Style Sheets".

*[CSS]: Cascading Style Sheets

***

### Cite Tag

Input:

```html
"Code is poetry." ---<cite>Automattic</cite>
```

Output:

"Code is poetry." ---<cite>Automattic</cite>

***

### Strike Tag

Input:

```html
This tag will let you <strike>strikeout text</strike>.
```

Output:

This tag will let you <strike>strikeout text</strike>.


***

### Emphasize Tag

Input:

```markdown
The emphasize tag should *italicize* text.
```

Output:

The emphasize tag should *italicize* text.


***

### Insert Tag

Input:

```html
This tag should denote updated text <ins>inserted</ins> in a blog post.
```

Output:

This tag should denote updated text <ins>inserted</ins> in a blog post.

***

### Keyboard Tag

Input:

```html
This scarcely known <kbd>keyboard tag</kbd> emulates represents user input and produces an inline element displayed in the browser's default monospace font.
```

Output:

This scarcely known <kbd>keyboard tag</kbd> emulates represents user input and produces an inline element displayed in the browser's default monospace font.

***

### Footnotes

Input:

```markdown
I get 10 times more traffic from [Google] [^1] than from
[Yahoo] [^2] or [MSN] [^3].
```

Output:

I get 10 times more traffic from [Google] [^1] than from
[Yahoo] [^2] or [MSN] [^3].

***

### Strong Tag

Input:

```markdown
This tag makes **bold text, try not to overuse it tho**.
```

Output:

This tag makes **bold text, try not to overuse it tho**.

***

### Subscript Tag

Input:

```html
C<sub>6</sub>H<sub>12</sub>O<sub>6</sub>
```

Output:

C<sub>6</sub>H<sub>12</sub>O<sub>6</sub>

***

### Superscript Tag

Input:

```html
E = mc<sup>2</sup>
```

Output:

E = mc<sup>2</sup>

***

### Variable Tag

Input:

```html
The variable tag allows you to denote <var>variables</var>.
```

Output:

The variable tag allows you to denote <var>variables</var>.

***

### Horizontal Rules

Input:

```markdown
***
```

Output:

***

### Mark Tag

Input:

```html
The <mark>mark tag allows you to highlight parts </mark> of your text.
```

Output:

The <mark>mark tag allows you to highlight parts </mark> of your text.

***

### Footnotes reference

Input:

```markdown
[^1]: http://google.com/        "Google"
[^2]: http://search.yahoo.com/  "Yahoo Search"
[^3]: http://search.msn.com/    "MSN Search"
```

Output:

[^1]: http://google.com/        "Google"
[^2]: http://search.yahoo.com/  "Yahoo Search"
[^3]: http://search.msn.com/    "MSN Search"
