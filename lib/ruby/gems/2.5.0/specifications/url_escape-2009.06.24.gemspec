# -*- encoding: utf-8 -*-
# stub: url_escape 2009.06.24 ruby ext
# stub: ext/extconf.rb

Gem::Specification.new do |s|
  s.name = "url_escape".freeze
  s.version = "2009.06.24"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["ext".freeze]
  s.authors = ["Evan Phoenix".freeze, "TJ Vanderpoel".freeze, "Michael Fellinger".freeze, "Trey Dempsey".freeze, "Jayson Vaughn".freeze]
  s.date = "2009-06-24"
  s.description = "Fast replacement for CGI.escape and Rack::Utils.escape".freeze
  s.email = "manveru@rubyists.com".freeze
  s.extensions = ["ext/extconf.rb".freeze]
  s.files = ["ext/extconf.rb".freeze]
  s.homepage = "http://github.com/bougyman/seedling".freeze
  s.rubyforge_project = "url-escape".freeze
  s.rubygems_version = "2.7.6.2".freeze
  s.summary = "Fast url_escape library written in C".freeze

  s.installed_by_version = "2.7.6.2" if s.respond_to? :installed_by_version
end
