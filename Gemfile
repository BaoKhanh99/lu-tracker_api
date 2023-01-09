# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) {|repo| "https://github.com/#{repo}.git"}

ruby "3.1.1"

gem "bootsnap", require: false
gem "config"
gem "devise"
gem "dotenv-rails"
gem "jwt"
gem "mysql2"
gem "openssl"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.4"
gem "tzinfo-data", platforms: %i(mingw mswin x64_mingw jruby)

group :development, :test do
  gem "debug", platforms: %i(mri mingw x64_mingw)
  gem "pry-nav"
  gem "pry-rails"
  gem "rubocop"
  gem "rubocop-checkstyle_formatter"
  gem "rubocop-performance"
  gem "rubocop-rails"
end
