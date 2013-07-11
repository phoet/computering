# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'computering/version'

Gem::Specification.new do |spec|
  spec.name          = "computering"
  spec.version       = Computering::VERSION
  spec.authors       = ["Peter Schröder"]
  spec.email         = ["phoetmail@googlemail.com"]
  spec.license       = %q{THE (extended) BEER-WARE LICENSE}
  spec.summary = spec.description   = %q{pretends you could type really fast}
  spec.homepage      = "https://github.com/phoet/computering"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rainbow", "> 1.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rake"
end
