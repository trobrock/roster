# Roster
[![Dependency Status](https://gemnasium.com/trobrock/roster.png)](https://gemnasium.com/trobrock/roster)

A simple api client and Sinatra plugin for interacting with [Dugout](https://github.com/trobrock/dugout)

## Installation

Add this line to your application's Gemfile:

    gem 'roster'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install roster

## Usage

### Sinatra

```ruby
Roster.configure do |config|
  config.host     = THIS_APPS_HOST
  config.endpoint = DUGOUT_URL
end

class MyApp < Sinatra::Base
  register Roster::Sinatra
  
  get '/' do
    puts "You are now authenticated as: #{current_user.login}"
  end
end
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
