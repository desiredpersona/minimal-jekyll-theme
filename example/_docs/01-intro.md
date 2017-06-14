---
layout: page

sidebar:
  title: Documentation
  navigation: docs


title:  Introducing Minimal
date:   2017-01-10 14:47:50 +0100
author: Desired Persona
post_meta: false
permalink: /docs/
---


Minimal-jekyll-theme has been developed as a Jekyll theme gem. This will allow you to receive automatic updates using `bundle update`. 


## Installing the Theme


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


## Theme Setup

1. Create a `_data` folder in your sites root directory.

2. Copy `theme.yml` and `authors.yml` from `example/_data/` to your `_data` folder in root directory.

3. Create `assets/images` folder.


## Usage

To view your new theme, run `bundle exec jekyll serve` and open your browser at [http://localhost:4000](http://localhost:4000).

The `example` directory contains a working demo of this theme.
