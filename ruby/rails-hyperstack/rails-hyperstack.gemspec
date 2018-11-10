# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hyperstack/version'

Gem::Specification.new do |spec|
  spec.name        = 'rails-hyperstack'
  spec.version     = Hyperstack::VERSION
  spec.summary     = 'Hyperstack for Rails with generators'
  spec.description = 'This gem provide a full hyperstack for rails plus generators for Hyperstack elements'
  spec.authors     = ['Loic Boutet', 'Adam George', 'Mitch VanDuyn', 'Jan Biedermann']
  spec.email       = ['loic@boutet.com', 'jan@kursator.com']
  spec.homepage    = 'http://hyperstack.org'
  spec.license     = 'MIT'
  # spec.metadata = {
  #   "homepage_uri" => 'http://hyperstack.org',
  #   "source_code_uri" => 'https://github.com/hyperstack
  # }
  spec.files       = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(tasks)/}) }
  spec.require_paths = ['lib']

  spec.add_dependency 'hyper-model', Hyperstack::VERSION
  spec.add_dependency 'hyper-router', Hyperstack::ROUTERVERSION
  spec.add_dependency 'hyperstack-config', Hyperstack::VERSION
  spec.add_dependency 'opal-rails', '~> 0.9.4'

  spec.add_dependency 'opal-browser', '~> 0.2.0'
  spec.add_dependency 'react-rails', '>= 2.4.0', '< 2.5.0'
  spec.add_dependency 'mini_racer', '~> 0.1.15'
  # https://github.com/discourse/mini_racer/issues/92
  spec.add_dependency 'libv8', '~> 6.3.0'
  spec.add_dependency 'rails', '>= 4.0.0'


  # spec.add_development_dependency 'sqlite3'
  # #spec.add_development_dependency 'chromedriver-helper'
  # spec.add_development_dependency 'geminabox', '>= 0.13.11'


  spec.add_development_dependency 'bundler', '~> 1.16.0'
  spec.add_development_dependency 'chromedriver-helper'
  spec.add_development_dependency 'hyper-spec', Hyperstack::VERSION
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'puma'
  spec.add_development_dependency 'bootsnap'
  #spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop', '~> 0.51.0'
  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency 'sass-rails', '~> 5.0'
  # Use Uglifier as compressor for JavaScript assets
  spec.add_development_dependency 'uglifier', '>= 1.3.0'
  # See https://github.com/rails/execjs#readme for more supported runtimes
  # gem 'mini_racer', platforms: :ruby

  # Use CoffeeScript for .coffee assets and views
  spec.add_development_dependency 'coffee-rails', '~> 4.2'
  # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
  spec.add_development_dependency 'turbolinks', '~> 5'
  # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
  spec.add_development_dependency 'jbuilder', '~> 2.5'
  spec.add_development_dependency 'foreman'
  spec.add_development_dependency 'database_cleaner'

end
