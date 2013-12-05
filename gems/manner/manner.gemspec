# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'manner/version'

Gem::Specification.new do |spec|
  spec.name          = 'manner'
  spec.version       = Manner::VERSION
  spec.authors       = ['Shubham Gupta']
  spec.email         = ['sgupta.89cse@gmail.com']
  spec.description   = 'Adding User models to your rails application'
  spec.summary       = 'Adding User models to your rails application'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']


  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'shoulda'
  spec.add_development_dependency 'debugger'
end
