source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.6'

# Use the latest stable Rails version compatible with Ruby 3.2
gem 'rails', '~> 7.0'

# Use MySQL as the database
gem 'mysql2', '>= 0.5'

# Use Puma as the app server
gem 'puma', '~> 6.0'

# Use SASS for stylesheets
gem 'sassc-rails'

# Use Importmaps instead of Webpacker (recommended in Rails 7)
gem 'importmap-rails'
gem 'turbo-rails'
gem 'stimulus-rails'

# JSON API support
gem 'jbuilder', '~> 2.11'

# Elasticsearch integration
gem 'searchkick'
gem 'elasticsearch', '~> 8'

# Caching
gem 'redis', '~> 5.0'

# Reduce boot times
gem 'bootsnap', '>= 1.15', require: false

group :development, :test do
  # Debugging tools
  gem 'byebug'
  gem 'listen', '~> 3.3'

  # Spring for faster development
  gem 'spring'
end

group :development do
  # Web console
  gem 'web-console', '>= 4.2.0'
  gem 'rack-mini-profiler', '~> 3.0'
end

group :test do
  gem 'capybara', '>= 3.37'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

# Fix timezone issues on Windows
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem "devise", "~> 4.9"
