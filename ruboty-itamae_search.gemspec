# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/itamae_search/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-itamae_search"
  spec.version       = Ruboty::ItamaeSearch::VERSION
  spec.authors       = ["tbpgr"]
  spec.email         = ["tbpgr@tbpgr.jp"]
  spec.summary       = %q{An Ruboty Handler + Actions to output itamae plugin search result.}
  spec.description   = %q{An Ruboty Handler + Actions to output itamae plugin search result.}
  spec.homepage      = "https://github.com/tbpgr/ruboty-itamae_search"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "ruboty"
  spec.add_runtime_dependency "itamae-sonar"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
