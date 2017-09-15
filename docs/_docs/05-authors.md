---
layout: page

sidebar:
  title: Documentation
  navigation: docs
  
title: Authors
date: 2017-01-10 14:47:50 +0100
author: Desired Persona
post_meta: false
permalink: /docs/authors/
---

This theme has multiple author support.
1. First create a `/_data/` folder in your sites root directory if none exist yet.

2. Open `/docs/_data` [folder (located here)](https://github.com/desiredpersona/minimal-jekyll-theme/tree/master/docs/_data) and copy the example `authors.yml` file to your `/_data/` folder in your root directory.

3. Edit the `authors.yml` file with your own author info.

Here is an example

```yaml
# Authors

Desired Persona:
  name          : "Desired Persona"
  url           : "https://desiredpersona.com/about/"
  email         : "hello@desiredpersona.com"
  bio           : "Affiliate marketer. Media buyer. Developer."
  post_meta_bio : "Affiliate marketer. Media buyer. Developer."
  picture       : "/assets/images/author.jpg"
  cta           : "Follow"
  cta_url       : "https://twitter.com/desiredpersona"
  twitter       : "desiredpersona"
  google_plus   : "DesiredPersona"
  facebook      : "desiredpersona"
```

`name:` Author name.

`url:` Make your author name and author avatar clickable.

`email:` Author email.

`bio:` This is the author bio shown below each post.

`post_meta_bio :` This is the author bio shown above each post.

`picture:` The location of your authors image.

`cta:` Call-To-Action text.

`cta_url:` Call-To-Action link. If link contains `http://` it will automatically be opened in a new tab.

`twitter:` Twitter username.

`google_plus:` Google+ username.

`facebook:` Facebook username.


## How to add an author image
Add your author image to `/assets/images/` in your sites root directory. Update your avatar link in `authors.yml` file with the location to your author image.

## How to set a default author site-wide.
You can set a default author site-wide in your `_config.yml` by adding the following.
Note: This will be the default author unless specified in a post front matter.

```yaml
author: Desired Persona
```

## How to add an author to a post.
Include the following in your posts front matter

```yaml
author: Desired Persona
```

## How to add multiple authors
You can add as many authors as needed by following the same file format as the `author.yml` file which makes accepting guest post a breeze.