# coding: utf-8

Gem::Specification.new do |spec|
  spec.name                    = "minimal-jekyll-theme"
  spec.version                 = "0.2.1"
  spec.authors                 = ["Desired Persona"]
  spec.summary                 = %q{A minimal Jekyll theme that converts.}
  spec.homepage                = "https://desiredpersona.com/themes/"
  spec.license                 = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files                   = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|_(includes|layouts|sass)/|(LICENSE|README|CHANGELOG)((\.(txt|md|markdown)|$)))}i)
  end

  spec.add_runtime_dependency "jekyll", "~> 3.5"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.1"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.2"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.9"
  spec.add_runtime_dependency "jekyll-archives", "~> 2.1.1"

  spec.add_development_dependency "bundler", "~> 1.14"

end
