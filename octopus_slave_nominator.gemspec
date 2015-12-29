# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'octopus_slave_nominator/version'

Gem::Specification.new do |spec|
  spec.name          = "octopus_slave_nominator"
  spec.version       = OctopusSlaveNominator::VERSION
  spec.authors       = ["Toshiyuki Takaki"]
  spec.email         = ["Toshiyuki.Takaki@gmail.com"]

  spec.summary       = %q{Octopus.slave select a slave server randomly}
  spec.description   = %q{Octopus.slave select a slave server}
  spec.homepage      = "https://github.com/takakiNG"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "activerecord", ">= 3.0.0"
  spec.add_dependency "ar-octopus", ">= 0.3.4"
end
