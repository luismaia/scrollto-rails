# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'scrollto/rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'scrollto-rails6'
  spec.version       = Scrollto::Rails::VERSION
  spec.authors       = ['Ouvrages', 'Luis Maia']
  spec.email         = ['contact@ouvrages-web.fr', 'luisgoncalo.maia@gmail.com']

  spec.summary       = 'jQuery scrollTo for Rails 5.x and 6.x applications'
  spec.description   = 'This provides out of the box jQuery scrollTo plugin assets for Rails 5.x and 6.x applications'
  spec.homepage      = 'https://github.com/luismaia/scrollto-rails6'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'railties', '> 5.0'
  spec.add_development_dependency 'bundler', '> 1.13'
  spec.add_development_dependency 'rake', '> 10.0'
  spec.add_development_dependency 'rubocop'
end
