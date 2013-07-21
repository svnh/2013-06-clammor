source 'https://rubygems.org'

gem 'rails', '3.2.11'
gem 'rb-fsevent', :require => false if RUBY_PLATFORM =~ /darwin/i
gem 'sqlite3'
gem 'validates_timeliness', '~> 3.0'

group :test do
  gem 'shoulda'
  gem "factory_girl_rails", "~> 4.0"
  gem 'spork-rails'
  # gem 'guard-spork'
  gem 'database_cleaner'
  gem 'guard-rspec'
  gem 'guard-migrate'
  gem 'migration_test_helper'
end

group :test, :development do
  gem "rspec-rails", "~> 2.0"
  gem 'rb-readline'
  gem 'pry'
  gem 'pry-doc'
  gem 'pry_debug'
end