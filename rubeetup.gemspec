# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubeetup/version'

Gem::Specification.new do |spec|
  spec.name          = 'rubeetup'
  spec.version       = Rubeetup::VERSION
  spec.authors       = ['Mike Vascelli']
  spec.email         = ['michele.vascelli@gmail.com']

  spec.summary       = 'Ruby client library to the Meetup.com API'
  spec.description   = "A comprehensive and easily extensible Ruby library \
                       which simplifies interaction with the Meetup.com API"
  spec.homepage      = 'https://github.com/mike-vascelli/rubeetup'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'vcr'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'yard'

  spec.add_dependency 'multipart-post'
end
