# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'word_picker/version'

Gem::Specification.new do |spec|
  spec.name          = "word_picker"
  spec.version       = WordPicker::VERSION
  spec.authors       = ["Erik Nilsen, Marco Lindsey"]
  spec.email         = ["enilsen16@live.com , marco@marcolindsey.com"]
  spec.summary       = %q{A random word generator for things}
  spec.description   = %q{A random word generator for things}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
