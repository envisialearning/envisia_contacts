# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'envisia_contacts/version'

Gem::Specification.new do |spec|
  spec.name          = "envisia_contacts"
  spec.version       = EnvisiaContacts::VERSION
  spec.authors       = ["Aldwin Ibuna"]
  spec.email         = ["aibuna@gmail.com"]

  spec.summary       = %q{API Wrapper for Envisia Contacts.}
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/envisialearning/envisia_contacts"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "httplog", '~> 0.2.7'
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency 'her', '~> 0.7.3'
end
