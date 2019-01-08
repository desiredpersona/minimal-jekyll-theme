---
layout:     post
title:      Post formatting looks pretty damn amazing
subtitle:   Subtitles are optional and look just as good
date:       2017-06-06 13:20:50 +0100
last_modified_at: 2017-07-08 22:02:07 +0100
author:     Desired Persona
header:
    layout: header
    image: /assets/images/mountains-large.jpg
    caption: "[Unsplash](https://unsplash.com)"

categories:
    - post formatting
tags:
    - header
---

You’ll find this post in your `_posts` directory. Go ahead and edit it and re-build the site to see your changes. You can rebuild the site in many different ways, but the most common way is to run `jekyll serve`, which launches a web server and auto-regenerates your site when a file is updated.

To add new posts, simply add a file in the `_posts` directory that follows the convention `YYYY-MM-DD-name-of-post.ext` and includes the necessary front matter. Take a look at the source for this post to get an idea about how it works.

***


# Headings

View <a href="{{ "/docs/markdown/#headings" | relative_url }}" target="_blank">heading documentation</a>.

# Heading One

## Heading Two

### Heading Three

#### Heading Four

##### Heading Five

###### Heading Six

***


# Images

View <a href="{{ "/docs/markdown/#images" | relative_url }}" target="_blank">image documentation</a>.

Add images to your post using the markdown.

![northern lights]({{ "/assets/images/stars-small.jpg" | relative_url }})


### Image with caption

{% include figure image_path="/assets/images/macbook-small.jpg" alt="Macbook on a table" caption="Macbook on my office desk" %}



### Centered image with caption
{: .tc}

{% include figure image_path="/assets/images/stars-small.jpg" alt="stars" caption="Beautiful night sky" %}{: .tc}


### Image aligned left

{% include figure image_path="/assets/images/horse.jpg" alt="photo of a horse" caption="Photo of a horse" %}{: .tl}


### Image aligned right
{: .tr}

{% include figure image_path="/assets/images/horse.jpg" alt="photo of a horse" caption="Photo of a horse" %}{: .tr}


### Post width image

{% include figure image_path="/assets/images/mountains-large.jpg" alt="mountain" caption="Mountain landscape" %}{: .w-100 .tc}


### Full width image

{% include figure image_path="/assets/images/porsche-large.jpg" alt="Porsche 911" caption="Porsche 911" %}{: .full .tc}

<br>

***


# Responsive Videos

View <a href="{{ "/docs/markdown/#responsive-video" | relative_url }}" target="_blank">responsive video documentation</a>.

### YouTube

{% include video src="https://www.youtube.com/embed/V2q7-1XppDM" %}

### Vimeo

{% include video src="https://player.vimeo.com/video/159104382" %}

***


# Blockquotes

View <a href="{{ "/docs/markdown/#blockquotes" | relative_url }}" target="_blank">blockquote documentation</a>.

Single line blockquote:

>I am not talented, I am obsessed


Multi line blockquote with a cite reference:

>There's no talent here, this is hard work. This is an obsession. Talent does not exist, we are all equal as human beings. You could be anyone if you put in the time. You will reach the top, and that’s that. I am not talented, I am obsessed.
>
> --- <cite>Conor McGregor</cite>

***


# Tables

View <a href="{{ "/docs/markdown/#tables" | relative_url }}" target="_blank">table documentation</a>.

Table.

| Employee                 | Salary |                            |
| ------------------------ | ------ | -------------------------- |
| [John Joe](#)            | $1     | Needs a better salary      |
| [Jane Doe](#)            | $10K   | Blogging intern            |
| [Joe Bloggs](#)          | $25k   | Photographer               |
| [Jane Bloggs](#)         | $100k  | Marketer & Copywriter      |


<br>

Table with a footer.

| Header1  | Header2 | Header3  |
|:---------|:-------:|---------:|
| cell1    | cell2   | cell3    |
| cell4    | cell5   | cell6    |
|-------------------------------|
| cell1    | cell2   | cell3    |
| cell4    | cell5   | cell6    |
|===============================|
| Footer1  | Footer2 | Footer3  |

<br>

***


# Codeblocks

View <a href="{{ "/docs/markdown/#codeblocks" | relative_url }}" target="_blank">codeblock documentation</a>.

Minimal codeblock.

```ruby
def print_hi(name)
  puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
```

Codeblock with line numbers.

{% highlight ruby linenos %}
def show
  @widget = Widget(params[:id])
  respond_to do |format|
    format.html # show.html.erb
    format.json { render json: @widget }
  end
end
{% endhighlight %}

Command line prompt.

```shell
$ gem install jekyll
```

This is what `<html>` code looks like in a paragraph of text.

***


# List Types

View <a href="{{ "/docs/markdown/#lists" | relative_url }}" target="_blank">list types documentation</a>.


### Definition Lists

Definition
:   An exact statement or description of the nature, scope, or meaning of something: *our definition of what constitutes poetry*.


### Unordered Lists (Nested)

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


### Ordered List (Nested)

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

View <a href="{{ "/docs/markdown/#buttons" | relative_url }}" target="_blank">button documentation</a>.

[primary](#){: .btn .btn--primary}
[secondary](#){: .btn .btn--secondary}
[success](#){: .btn .btn--success}
[warning](#){: .btn .btn--warning}
[danger](#){: .btn .btn--danger}
[info](#){: .btn .btn--info}
[light](#){: .btn .btn--light}
[dark](#){: .btn .btn--dark}

[primary](#){: .btn .btn-outline--primary}
[secondary](#){: .btn .btn-outline--secondary}
[success](#){: .btn .btn-outline--success}
[warning](#){: .btn .btn-outline--warning}
[danger](#){: .btn .btn-outline--danger}
[info](#){: .btn .btn-outline--info}
[light](#){: .btn .btn-outline--light}
[dark](#){: .btn .btn-outline--dark}

[extra large](#){: .btn .btn-outline--primary .btn--x-large}
[extra large](#){: .btn .btn--primary .btn--x-large}

[large](#){: .btn .btn-outline--primary .btn--large}
[large](#){: .btn .btn--primary .btn--large}

[small](#){: .btn .btn-outline--primary .btn--small}
[small](#){: .btn .btn--primary .btn--small}

[Block level button](#){: .btn .btn--primary .btn--block}
[Block level outline button](#){: .btn .btn-outline--primary .btn--block}

[uppercase](#){: .btn .btn--primary .ttu}
[capitalised](#){: .btn .btn-outline--primary .ttc}
[LOWERCASE](#){: .btn .btn--primary .ttl}

[grow](#){: .btn .btn-outline--primary .grow}
[glow](#){: .btn .btn--primary .glow .o-80}
[dim](#){: .btn .btn--primary .dim}

***

# Alerts/Notices

View <a href="{{ "/docs/markdown/#notices" | relative_url }}" target="_blank">alerts documentation</a>.

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

***

## Links / Anchor Tag

View <a href="{{ "/docs/markdown/#links" | relative_url }}" target="_blank">link documentation</a>.

[Primary link](#) - Set primary colors in `variables.scss`.

[Open link in new tab](https://google.com){:target="_blank"}

[Link title on hover](# "Google")

[Dim on hover](#){: .hover-black .dim}

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

***

## HTML Tags

View <a href="{{ "/docs/markdown/#tags" | relative_url }}" target="_blank">HTML tags documentation</a>.

### Address Tag

<address>
  1 Infinite Loop<br/> Cupertino, CA 95014<br/> United States
</address>

### Abbreviation Tag

The abbreviation CSS stands for "Cascading Style Sheets".

*[CSS]: Cascading Style Sheets

### Cite Tag

"Code is poetry." ---<cite>Automattic</cite>

### Strike Tag

This tag will let you <strike>strikeout text</strike>.

### Emphasize Tag
The emphasize tag should *italicize* text.

### Insert Tag
This tag should denote updated text <ins>inserted</ins> in a blog post.

### Keyboard Tag
This scarcely known <kbd>keyboard tag</kbd> emulates represents user input and produces an inline element displayed in the browser's default monospace font.

### Footnotes
I get 10 times more traffic from [Google] [^1] than from
[Yahoo] [^2] or [MSN] [^3].

### Strong Tag
This tag makes **bold text, try not to overuse it tho**.

### Subscript Tag
C<sub>6</sub>H<sub>12</sub>O<sub>6</sub>

### Superscript Tag
E = mc<sup>2</sup>

### Variable Tag
The variable tag allows you to denote <var>variables</var>.

### Horizontal Rules

***

### Mark Tag
The <mark>mark tag allows you to highlight parts </mark> of your text.


Check out the [Jekyll docs][jekyll-docs] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll Talk][jekyll-talk].

[jekyll-docs]: http://jekyllrb.com/docs/home
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/

[^1]: http://google.com/        "Google"
[^2]: http://search.yahoo.com/  "Yahoo Search"
[^3]: http://search.msn.com/    "MSN Search"
