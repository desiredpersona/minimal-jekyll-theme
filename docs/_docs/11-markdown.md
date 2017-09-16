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


<h2 id="button-sizes">Sizes</h2>

[Extra Large](#){: .btn .btn-outline--primary .btn--x-large} [Extra Large](#){: .btn .btn--primary .btn--x-large}

```markdown
{% raw %}[extra large](#){: .btn .btn-outline--primary .btn--x-large}{% endraw %}
{% raw %}[extra large](#){: .btn .btn--primary .btn--x-large}{% endraw %}
```

***

[Large](#){: .btn .btn-outline--primary .btn--large} [Large](#){: .btn .btn--primary .btn--large}

```markdown
{% raw %}[large](#){: .btn .btn-outline--primary .btn--large}{% endraw %}
{% raw %}[large](#){: .btn .btn--primary .btn--large}{% endraw %}
```

***

[Medium](#){: .btn .btn-outline--primary} [Medium](#){: .btn .btn--primary}

```markdown
{% raw %}[medium](#){: .btn .btn-outline--primary}{% endraw %}
{% raw %}[medium](#){: .btn .btn--primary}{% endraw %}
```

***

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
