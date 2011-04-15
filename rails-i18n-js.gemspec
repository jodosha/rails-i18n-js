# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rails-i18n-js/version"

Gem::Specification.new do |s|
  s.name        = "rails-i18n-js"
  s.version     = Rails::I18n::Js::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Luca Guidi"]
  s.email       = ["guidi.luca@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Rails i18n with Javascript}
  s.description = %q{Rails i18n with Javascript}

  s.rubyforge_project = "rails-i18n-js"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
