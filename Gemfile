source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.6'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'devise', '~> 4.2'
gem 'pundit', '~> 2.0'
gem 'pg', '~> 1.1', '>= 1.1.3'
gem 'dotenv-rails', '~> 2.5'
gem 'cocoon', '~> 1.2', '>= 1.2.11'
gem 'carrierwave', '~> 1.2', '>= 1.2.3'
gem 'draper', '~> 3.0', '>= 3.0.1'
gem 'datagrid', '~> 1.5', '>= 1.5.8'
gem 'kaminari', '~> 1.1', '>= 1.1.1'
gem 'select2-rails', '~> 4.0', '>= 4.0.3'
gem 'simple_form', '~> 4.0', '>= 4.0.1'
gem 'haml', '~> 5.0', '>= 5.0.4'
gem 'materialize-sass', '~> 1.0'
gem 'jquery-rails'

group :development, :test do
  gem 'pry-rails'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
