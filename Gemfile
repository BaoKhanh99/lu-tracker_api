source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.1"

gem "rails", "~> 7.0.4"
gem "dotenv-rails"
gem "mysql2"
gem "puma", "~> 5.0"
gem "config"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "pry-nav"
  gem "pry-rails"
  gem "rubocop"
  gem "rubocop-checkstyle_formatter"
end

group :development do
end
