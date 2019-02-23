source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'bootsnap', '>= 1.1.0', require: false

gem 'jbuilder', '~> 2.5'

gem 'rails', '~> 5.2.1'

gem 'rails_12factor'

gem 'recaptcha', require: "recaptcha/rails"

gem 'uglifier', '>= 1.3.0'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'sqlite3', '~> 1.3.13'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
