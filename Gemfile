source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.1', '>= 5.2.1.1'
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
gem 'clockwork'
gem 'puma', '~> 3.11'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'awesome_print'
gem 'dotenv-rails'
gem 'rspec-rails'
gem 'structural', '~> 0.0.3'
gem 'capistrano-rails'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'factory_bot_rails'
  gem 'vcr'
  gem 'database_cleaner'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'webmock'
  gem 'timecop'
  gem 'simplecov'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
