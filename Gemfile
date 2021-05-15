# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'bson_ext', '~> 1.5.1'

gem 'bcrypt', '~> 3.1.7'
gem 'cpf_cnpj'
gem 'mysql2', '~> 0.5.3'
gem 'puma', '>= 4.3'
gem 'rails', '~> 6.0.3'
gem 'rails-healthcheck', '~> 1.2.0'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-attack', '~> 6.5.0'
gem 'rack-cors', '~> 1.1.1'

gem 'devise', '~> 4.7.1'
gem 'devise-jwt'

# Pagination
gem 'kaminari'
gem 'api-pagination'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'cpf_faker'
  gem 'database_cleaner', '~> 2'
  gem 'factory_bot_rails', '~> 6'
  gem 'faker'
  gem 'rspec-rails', '~> 4.0.2'
  gem 'rubocop', '0.93.1'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
  gem 'shoulda-matchers', '~> 4'
  gem 'simplecov', '0.18.1'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
