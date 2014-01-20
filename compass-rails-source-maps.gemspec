# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'compass-rails-source-maps/version'

Gem::Specification.new do |spec|
  spec.name          = "compass-rails-source-maps"
  spec.version       = CompassRailsSourceMaps::VERSION
  spec.authors       = ["glebtv"]
  spec.email         = ["glebtv@gmail.com"]
  spec.description   = %q{A small monkeypatch to enable sourcemaps with compass-rails}
  spec.summary       = %q{A small monkeypatch to enable sourcemaps with compass-rails}
  spec.homepage      = "https://github.com/glebtv/compass-rails-source-map"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
