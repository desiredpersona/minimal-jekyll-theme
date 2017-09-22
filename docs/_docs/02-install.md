---
layout: page

sidebar:
  title: Documentation
  navigation: docs

title:  Installing the Theme
date:   2017-01-10 14:47:50 +0100
author: Desired Persona
post_meta: false
permalink: /docs/install-theme/
---

1. Install Jekyll & Bundler:

    ```
    gem install jekyll bundler
    ```

2. Add the following lines to your Jekyll site’s `Gemfile`:  

    ```
    source "https://rubygems.org"

    # Jekyll
    gem "jekyll"

    # Theme
    gem "minimal-jekyll-theme"

    # Plugins
    group :jekyll_plugins do
      gem 'jekyll-feed'
      gem 'jekyll-sitemap'
      gem 'jekyll-seo-tag'
      gem 'jekyll-archives'
    end
    ```

3. Add this line to your Jekyll site’s `_config.yml` file

    ```
    theme: minimal-jekyll-theme
    ```

4. Run Bundler to install the theme gem and dependencies

    ```
    bundle install
    ```
5. To update your theme in the future simply run `bundle update`.


## Theme Setup

1. Create a `/_data/` folder in your sites root directory.

2. Copy `theme.yml` and `authors.yml` from `/docs/_data/` to your `/_data/` folder located in your sites root directory.

3. Create `/assets/images/` folder to manage all your sites images.


## Usage

To view your new theme, run `bundle exec jekyll serve` and open your browser at [http://localhost:4000](http://localhost:4000).