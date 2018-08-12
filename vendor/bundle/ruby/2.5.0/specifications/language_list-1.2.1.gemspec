# -*- encoding: utf-8 -*-
# stub: language_list 1.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "language_list".freeze
  s.version = "1.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Steve Smith".freeze]
  s.date = "2017-04-18"
  s.description = "A list of languages based upon ISO-639-1 and ISO-639-3 with functions to retrieve only common languages.".freeze
  s.email = ["gems@dynedge.co.uk".freeze]
  s.homepage = "https://github.com/scsmith/language_list".freeze
  s.rubyforge_project = "language_list".freeze
  s.rubygems_version = "2.7.6".freeze
  s.summary = "A list of languages and methods to find and work with these languages.".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<minitest>.freeze, ["> 5.0.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<minitest>.freeze, ["> 5.0.0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<minitest>.freeze, ["> 5.0.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
