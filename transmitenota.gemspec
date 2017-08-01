# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'transmitenota/version'

Gem::Specification.new do |spec|
  spec.name          = "transmitenota"
  spec.version       = Transmitenota::VERSION
  spec.authors       = ["Luis Fernando Pimenta"]
  spec.email         = ["pimenta@red4sis.com"]

  spec.description   = "Gem for emission and transmission of nfe"
  spec.summary       = "Gem for emission and transmission of nfe to transmitenota"
  spec.homepage      = "https://github.com/luispimenta/transmitenota"
  spec.license       = "MIT"

  spec.files       = Dir["{lib/**/*.rb,README.rdoc,test/**/*.rb,Rakefile,*.gemspec}"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
