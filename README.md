# byebug_bug
A minimal reproduction of the thread hang bug in byebug. It contains one feature spec set up with RSpec, Capybara, and capybara-webkit.

# Setup
```ruby
bundle install
```

# Steps to reproduce
1. Run the feature spec and watch it pass: rspec spec/features/home_spec.rb
2. Uncomment the byebug line
3. Run the feature spec again
4. Call page.find('h1') and the thread should hang.