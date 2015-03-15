# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'google_analytics/version'

Gem::Specification.new do |spec|
  spec.name          = "google_analytics"
  spec.version       = GoogleAnalytics::VERSION
  spec.authors       = ["liwei"]
  spec.email         = ["hi@liwei.me"]
  spec.summary       = %q{Google Analytics Demo}
  spec.description   = %q{Google Analytics Demo}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_development_dependency "minitest"
  spec.add_development_dependency 'vcr'
  spec.add_development_dependency 'webmock'

  spec.add_runtime_dependency "faraday"
  spec.add_runtime_dependency "faraday_middleware"
  spec.add_runtime_dependency "multi_json"
end
