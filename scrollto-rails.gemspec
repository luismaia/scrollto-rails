# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'scrollto/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "scrollto-rails"
  spec.version       = Scrollto::Rails::VERSION
  spec.authors       = ["Ouvrages"]
  spec.email         = ["contact@ouvrages-web.fr"]

  spec.summary       = "Use jQuery scrollTo for your Rails 5.x application"
  spec.description   = "This provides jQuery scrollTo for your Rails 5.x application"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", "> 5.0"
  spec.add_development_dependency "bundler", "> 1.13"
  spec.add_development_dependency "rake", "> 10.0"
end
