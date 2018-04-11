# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spree_instagram_shop_it/version'

Gem::Specification.new do |spec|
  spec.name          = "spree_instagram_shop_it"
  spec.version       = SpreeInstagramShopIt::VERSION
  spec.authors       = ["Noel"]
  spec.email         = ["noel@2bedigital.com"]

  spec.summary       = %q{Conect your Instagram with your e-commerce and tag your products}
  spec.description   = %q{A gem that allows you to easily integrate your Instagram pictures in your Spree e-commerce}
  spec.homepage      = "https://github.com/2beDigital/spree_instagram_shop_it"
 
  spec.required_ruby_version = ">= 2.1"

  spec.files       = `git ls-files`.split("\n")
  spec.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'spree_core', '~> 2.4.10'
  spec.add_dependency 'instagram_api_client'
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec-rails", "~> 3.2"
  spec.add_development_dependency "sinatra"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "sass-rails"
  spec.add_development_dependency "coffee-rails"
  spec.add_development_dependency "factory_girl"
  spec.add_development_dependency "capybara"
  spec.add_development_dependency "database_cleaner"
  spec.add_development_dependency "ffaker"
  spec.add_development_dependency "byebug"
end