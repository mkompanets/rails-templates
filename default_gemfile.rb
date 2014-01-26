# Default Development and Test Gemfile.
# rails new blog -m ~/template.rb
# rails new blog -m http://example.com/template.rb

# rake rails:template LOCATION=~/template.rb
# rake rails:template LOCATION=http://example.com/template.rb

gem_group :development, :test do
  gem 'rspec-rails'
  gem 'guard-livereload'
  gem 'spring'
  gem 'factory_girl_rails'
  gem 'faker'
end

gem_group :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'guard-rspec'
  gem 'guard-spring'
  gem 'shoulda-matchers'
end

run('bundle install')
generate('rspec:install')
run('bundle exec spring binstub --all')
run('bundle binstubs rspec-core')
run('guard init livereload')
run('guard init rspec')
run('guard init spring')
