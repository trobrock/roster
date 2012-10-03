# -*- encoding: utf-8 -*-
require File.expand_path('../lib/roster/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Trae Robrock"]
  gem.email         = ["trobrock@gmail.com"]
  gem.description   = %q{api client for interacting with dugout}
  gem.summary       = %q{enable authentication on your app to anyone in your organization using dugout}
  gem.homepage      = "https://github.com/trobrock/roster"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "roster"
  gem.require_paths = ["lib"]
  gem.version       = Roster::VERSION

  gem.add_dependency "sinatra-contrib"

  gem.add_development_dependency "rake"
end
