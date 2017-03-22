# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'snb2txt/version'

Gem::Specification.new do |spec|
  spec.name          = "snb2txt"
  spec.version       = Snb2txt::VERSION
  spec.authors       = ['Daniel Cruz Horts']
  spec.summary       = %q{A simple CLI tool to extract text from Samsung Notes files (.snb)}
  spec.homepage      = 'https://github.com/dncrht/snb2txt'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'rubyzip'
  spec.add_runtime_dependency 'nokogiri'
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
