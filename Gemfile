source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'rails', '~> 6.1.3', '>= 6.1.3.1'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'devise', '~> 4.7', '>= 4.7.3'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'addressable', '~> 2.7'
gem 'simple_calendar', '~> 2.4', '>= 2.4.2'
gem "bootstrap_form", "~> 4.0"
gem 'pg', '~> 1.2', '>= 1.2.3'
gem 'kaminari', '~> 1.2', '>= 1.2.1'

gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.7'
gem 'jquery-rails', '4.3.5'
gem 'chart-js-rails', '~> 0.0.9'
gem 'figaro', '~> 1.2'
gem 'better_errors', '~> 2.9', '>= 2.9.1'
gem 'rails_12factor', '~> 0.0.3'

gem 'grover', '~> 0.12.3'

# Extracting `assigns` and `assert_template` from ActionDispatch.
gem 'rails-controller-testing', '~> 1.0', '>= 1.0.5'

# Using binding_of_caller we can grab bindings from higher up the call stack and evaluate code in that context
gem 'binding_of_caller', '~> 1.0'

#Create beautiful JavaScript charts with one line of Ruby
gem 'chartkick', '~> 4.0', '>= 4.0.5'
gem 'groupdate', '~> 5.2', '>= 5.2.2'

gem 'wicked_pdf', '~> 2.1'
gem 'wkhtmltopdf-heroku', '2.12.6.0'
gem 'wkhtmltopdf-binary', '~> 0.12.3'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'sqlite3', '~> 1.4'
end

group :production do
  
  #gem 'rails_12factor', '0.0.2'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
