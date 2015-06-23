# GFW API'S RUBY CLIENT SANDBOX

(Beta!)

This app will serve as an example of how to use the Ruby based GFW API's client you'll find [in GitHub](https://github.com/Vizzuality/gfw-ruby-client-library).

## Installation

Just clone this repo and:
```bash
$ cd api_ruby_sandbox/
$ rails s
```

This app has a very simple Ruby Controller where you'll see how to ask to the API (/api_ruby_sandbox/app/controllers/ask_api_controller.rb):
```ruby
@imazon_iso = GfwApiClient.find_set('imazon-alerts','BRA')
```
In that example we're asking for the Imazon alerts for a given country (Brazil) and we'll use that @imazon_iso data in our view.
```ruby
<%= JSON.parse(@imazon_iso.body) %>
```