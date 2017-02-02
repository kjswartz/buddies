source 'https://rubygems.org'
ruby '2.3.1'

###############################################################################
# Core
gem 'rails', '~> 5.0.0'
gem 'pg'                        # Database
gem 'redis', '~> 3.0'           # Key-value store
gem 'redis-rails'               # Cahche store
gem 'puma'
gem 'jwt'                       # Token Auth

gem 'newrelic_rpm'              # Performance Monitoring
# Middleware
gem 'rack-cors', require: 'rack/cors'
###############################################################################
# General
gem 'devise'                    # Login
gem 'pg_search'                 # Postgres Search
gem 'simple_form'               # Semantic Forms
gem 'sidekiq'                   # Background tasks
###############################################################################
# Content
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'

gem 'bootstrap-sass', '~> 3.3.6'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'        # Build JSON APIs with ease
gem 'haml-rails'                # Sexy views
###############################################################################
# Attachments
# gem 'fog-aws'
# gem 'carrierwave'
# gem 'mini_magick'

###############################################################################
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]


group :development, :test do
  gem 'byebug'
  gem 'factory_girl_rails'
  gem 'foreman'
  gem 'rspec-rails', '~> 3.4'
  gem 'rails-controller-testing'  # render views check in controller
end

group :development do
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'guard-rspec', '~> 4.6', require: false
  gem 'terminal-notifier-guard'
end

