# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "user_agent/version"

Gem::Specification.new do |s|
  s.name = %q{useragent2css}
  s.version = UserAgent::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ["Lawrence Pit"]
  s.email = %q{lawrence.pit@gmail.com}
  s.homepage = %q{http://github.com/lawrencepit/useragent2css}
  s.summary = %q{User-Agent to CSS parser for ruby}
  s.description = %q{User-Agent to CSS parser for ruby}
  s.date = Time.now.utc.strftime("%Y-%m-%d")
  s.files = Dir.glob("lib/**/*") + [
     "MIT-LICENSE",
     "README.md",
     "Gemfile",
     "useragent2css.gemspec"
  ]
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.rdoc_options = ["--charset=UTF-8"]
  s.add_development_dependency "actionpack"
  s.add_development_dependency "rake"
  # s.add_development_dependency "rcov"
  s.add_development_dependency "rspec"
end

