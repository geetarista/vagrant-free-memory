# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-free-memory/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-free-memory"
  spec.version       = VagrantFreeMemory::VERSION
  spec.authors       = ["Robby Colvin"]
  spec.email         = ["geetarista@gmail.com"]
  spec.description   = %q{Vagrant plugin example from the book Vagrant: Up and Running}
  spec.summary       = %q{Functioning example for beginning with Vagrant plugin development.}
  spec.homepage      = "https://github.com/geetarista/vagrant-free-memory"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.2.33"
  spec.add_development_dependency "rake"
end
