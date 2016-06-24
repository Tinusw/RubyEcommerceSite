source 'https://rubygems.org'


gem 'rails', '>= 5.0.0.rc1', '< 5.1'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks', '~> 5.x'
gem 'jbuilder', '~> 2.0'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
gem 'devise', '~> 4.1', '>= 4.1.1'
gem 'cancancan', '~> 1.14'
gem 'jquery-turbolinks'
gem 'will_paginate', '~> 3.1.0'
gem 'stripe'

gem 'elevatezoom-rails'

group :production do 
  gem 'rails_12factor'
  gem 'pg'
end

group :development, :test do
  gem 'sqlite3'
  gem 'byebug', platform: :mri
  # Currently rspec isn't 100% rails 5 ready... hence the mess. See Issue #1527 on rspec-rails git
  gem 'rspec-core', github: 'rspec/rspec-core', branch: 'master'
  gem 'rspec-support', github: 'rspec/rspec-support', branch: 'master'
  gem 'rspec-expectations', github: 'rspec/rspec-expectations', branch: 'master'
  gem 'rspec-mocks', github: 'rspec/rspec-mocks', branch: 'master'
  gem 'rspec-rails', github: 'rspec/rspec-rails', branch: 'master'
  # Needed for rspec controller tests to access 'assert_template' function
  gem 'rails-controller-testing'
  gem 'factory_girl_rails'
end

group :development do
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
