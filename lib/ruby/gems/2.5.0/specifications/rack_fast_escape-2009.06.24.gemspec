# -*- encoding: utf-8 -*-
# stub: rack_fast_escape 2009.06.24 ruby lib

Gem::Specification.new do |s|
  s.name = "rack_fast_escape".freeze
  s.version = "2009.06.24"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["The Rubyists, LLC".freeze]
  s.date = "2009-06-24"
  s.description = "The Rack Fast Escape library, by The Rubyists, LLC".freeze
  s.email = "The Rubyists, LLC <rubyists@rubyists.com>".freeze
  s.homepage = "http://github.com/bougyman/rack_fast_escape".freeze
  s.post_install_message = "============================================================\n\nThank you for installing RackFastEscape!\n\n============================================================\n".freeze
  s.rubyforge_project = "url-escape".freeze
  s.rubygems_version = "2.7.6.2".freeze
  s.summary = "The Rack Fast Escape library, by The Rubyists, LLC".freeze

  s.installed_by_version = "2.7.6.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<url_escape>.freeze, [">= 0"])
    else
      s.add_dependency(%q<url_escape>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<url_escape>.freeze, [">= 0"])
  end
end
