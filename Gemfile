source "https://rubygems.org"
ruby "2.7.4"

# gem "rails
gem "sinatra", "~> 2.1"
gem 'sinatra-contrib', '~> 2.2', '>= 2.2.2',require: false
gem "thin", "~> 1.8"
gem "rack-contrib", "~> 2.3"
gem "rack-cors", "~> 1.1"
gem "activerecord", "~> 6.1"
gem "sinatra-activerecord", "~> 2.0"
gem "rake", "~> 13.0"
gem 'faker', :git => 'https://github.com/faker-ruby/faker.git', :branch => 'master'
gem "require_all", "~> 3.0"


group :development do
  gem "pry", "~> 0.14.1"
  gem "rerun"
  gem "sqlite3"
end


group :test do
  gem "database_cleaner", "~> 2.0"
  gem "rack-test", "~> 1.1"
  gem "rspec", "~> 3.10"
  gem "rspec-json_expectations", "~> 2.2"
  end

  group :production do
  gem 'pg', '~> 1.4', '>= 1.4.3'
end
