# -*- encoding: utf-8 -*-
# stub: picky 4.31.3 ruby lib
# stub: ext/picky/extconf.rb

Gem::Specification.new do |s|
  s.name = "picky".freeze
  s.version = "4.31.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Florian Hanke".freeze]
  s.date = "2015-09-02"
  s.description = "Fast Ruby semantic text search engine with comfortable single field interface.".freeze
  s.email = "florian.hanke+picky@gmail.com".freeze
  s.executables = ["picky".freeze]
  s.extensions = ["ext/picky/extconf.rb".freeze]
  s.files = ["bin/picky".freeze, "ext/picky/extconf.rb".freeze]
  s.homepage = "http://florianhanke.com/picky".freeze
  s.licenses = ["MIT".freeze, "LGPL".freeze]
  s.rubyforge_project = "http://rubyforge.org/projects/picky".freeze
  s.rubygems_version = "2.7.6.2".freeze
  s.summary = "Picky: Semantic Search Engine. Clever Interface. Good Tools.".freeze

  s.installed_by_version = "2.7.6.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<multi_json>.freeze, ["~> 1.3"])
      s.add_runtime_dependency(%q<rack_fast_escape>.freeze, ["~> 2009.0"])
    else
      s.add_dependency(%q<activesupport>.freeze, [">= 0"])
      s.add_dependency(%q<multi_json>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rack_fast_escape>.freeze, ["~> 2009.0"])
    end
  else
    s.add_dependency(%q<activesupport>.freeze, [">= 0"])
    s.add_dependency(%q<multi_json>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rack_fast_escape>.freeze, ["~> 2009.0"])
  end
end
