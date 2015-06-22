source "https://rubygems.org"

ruby "2.2.2"

gem "bootstrap-sass", "~> 3.3.4"
gem "delayed_job_active_record"
gem "email_validator"
gem "exception_notification"
gem "figaro"
gem "high_voltage"
gem "jquery-rails"
gem "pg"
gem "rails", "4.2.1"
gem "sass-rails", "~> 5.0"
gem "simple_form"
gem "thin"
gem "uglifier"
gem "anadea-identity"
gem "haml"
gem 'threejs-rails', git: 'git://github.com/marvindanig/threejs-rails.git'

group :development do
  gem "spring"
  gem "spring-commands-rspec"
  gem "web-console"
  gem "erb2haml"
end

group :development, :test do
  gem "awesome_print"
  gem "bundler-audit", require: false
  gem "byebug"
  gem "factory_girl_rails"
  gem "pry-rails"
  gem "rspec-rails", "~> 3.1.0"
  gem "jasmine-rails"
end

group :test do
  gem "database_cleaner"
  gem "formulaic"
  gem "launchy"
  gem "poltergeist"
  gem "simplecov", require: false
  gem "timecop"
  gem "webmock"
end

group :production do
  gem "rails_12factor"
end
