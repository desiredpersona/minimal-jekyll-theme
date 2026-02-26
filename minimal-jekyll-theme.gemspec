# coding: utf-8

Gem::Specification.new do |spec|
  spec.name     = "minimal-jekyll-theme"
  spec.version  = "1.0.0.beta"
  spec.authors  = ["Desired Persona"]
  spec.summary  = %q{A minimal one-column Jekyll theme.}
  spec.homepage = "https://desiredpersona.com/themes/"
  spec.license  = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files                   = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|_(includes|layouts|sass)/|(LICENSE|README|CHANGELOG)((\.(txt|md|markdown)|$)))}i)
  end

  spec.add_runtime_dependency "jekyll", ">= 4.3", "< 5.0"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4.0"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.8.0"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.17.0"
  spec.add_runtime_dependency "jekyll-archives", "~> 2.3.0"
  spec.add_runtime_dependency "jekyll-include-cache", "~> 0.2.1"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "webrick"

end
