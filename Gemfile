source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.3'
# gem 'pg', '~> 1.2'
# Use sqlite3 as the database for Active Record
gem 'mysql2', '~> 0.5.2'
# Use Puma as the app server
gem 'puma', '~> 5.0'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
gem 'turbolinks', '~> 5'

### AUTHENTICATION
gem 'devise', '~> 4.7.3'
gem 'pundit', '~> 2.1'

### FRONTEND
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# gem 'webpacker', '~> 5.2.1'
gem 'slim', '~> 4.1.0'
gem 'slim-rails', '~> 3.2'
gem 'simple_form', '~> 5.1.0'
gem 'bootstrap', '~> 4.0'
gem 'devise-bootstrap-views', '~> 1.0'
gem 'jquery-rails'
gem "stimulus-rails", "~> 0.5.4"

### ERRORS TRACKING
gem "sentry-ruby"
gem "sentry-rails"

group :development, :test do
  gem 'factory_bot_rails', '~> 6.1.0'
  gem 'rspec-rails', '~> 4.0.2'
  gem 'rspec-core', '~> 3.10'
  gem 'pry-byebug'
  gem 'rubocop'
  gem "rubocop-rails", "~> 2.12"
  gem 'faker', :git => 'https://github.com/faker-ruby/faker.git', :branch => 'master'
  gem 'shoulda-matchers', '~> 4.4.1'
  gem 'pundit-matchers', '~> 1.6.0'
end

group :development do
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'annotate', git: 'https://github.com/ctran/annotate_models.git', require: false
  gem 'letter_opener', '~> 1.7'
  gem "capistrano", "~> 3.16.0", require: false
  gem "capistrano-rails", "~> 1.6", require: false
  gem 'capistrano-rvm', '~> 0.1.2', require: false
  gem 'capistrano-yarn', '~> 2.0.2', require: false
  gem 'capistrano-passenger', '~> 0.2.1', require: false
  gem 'capistrano-the-best-compression', git: 'https://github.com/SumatoSoft/capistrano-the-best-compression'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
