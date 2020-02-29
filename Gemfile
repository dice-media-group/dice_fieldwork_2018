source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby "2.5.0"

gem "autoprefixer-rails"
gem "flutie"
gem "honeybadger"
gem "jquery-rails"
gem "pg", "~> 0.18"
gem "puma"
gem "rack-canonical-host"
gem "rails", "~> 5.1.4"
gem "recipient_interceptor"
gem "sass-rails", "~> 5.0"
gem "skylight"
gem "sprockets", ">= 3.0.0"
gem "suspenders"
gem "title"
gem "uglifier"


group :development do
  gem "listen"
  gem "rack-mini-profiler", require: false
  gem "spring"
  gem "web-console"
end

group :development, :test do
  gem "awesome_print"
  gem "bundler-audit", ">= 0.5.0", require: false
  gem "dotenv-rails"
  gem "pry-byebug"
  gem "pry-rails"
  ## app specific
  gem 'guard'
  gem 'guard-bundler', '~> 2.1'
  gem 'travis', '~> 1.8', '>= 1.8.9'
end

group :test do
  gem "formulaic"
  gem "launchy"
  gem "simplecov", require: false
  gem "timecop"
  gem "webmock"
end

group :production do
  gem "rack-timeout"
end

gem 'high_voltage'
gem 'bourbon', '~> 5.0'
gem 'neat', '~> 2.1'
gem 'refills', group: [:development, :test]
gem 'spring-commands-rspec', group: :development
gem 'rspec-rails', '~> 3.6', group: [:development, :test]
gem 'shoulda-matchers', group: :test
gem 'capybara-webkit', group: :test
gem 'simple_form'
gem 'bullet', group: [:development, :test]
gem 'factory_bot_rails', group: [:development, :test]
gem 'delayed_job_active_record'

## app specific gems
# backend
gem 'rails_admin', '~> 1.4', '>= 1.4.2'
gem 'paper_trail', '~> 10.0', '>= 10.0.1'
gem 'paper_trail-association_tracking', '~> 1.0'

# authentication
gem 'devise', '~> 4.7'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-facebook'
gem 'omniauth-linkedin'

# authorization
gem 'cancancan', '~> 1.13', '>= 1.13.1'

# asset upload
gem 'carrierwave', '~> 1.2', '>= 1.2.3'
gem 'rmagick', '~> 2.16'

# scheduling
gem 'ice_cube', '~> 0.16.3'


# frontend
gem 'bootstrap', '~> 4.1.3'