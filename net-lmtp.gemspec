# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'net/lmtp/version'

Gem::Specification.new do |spec|
  spec.name          = "net-lmtp"
  spec.version       = Net::LMTP::VERSION
  spec.authors       = ["Toshio Maki"]
  spec.email         = ["kirika.k2@gmail.com"]

  spec.summary       = %q{The Local Mail Transfer Protocol(LMTP) in Ruby. }
  spec.description   = %q{Support Local Mail Transfer Protocol(LMTP). }
  spec.homepage      = "http://github.com/kirikak2/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
