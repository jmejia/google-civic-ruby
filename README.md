# GoogleCivic

The gem in its current state only supports making API calls using a valid [Google API key](https://support.google.com/cloud/answer/6158841?hl=en&ref_topic=6262490). If you are interested in using OAuth, consider using the official [google-api-ruby-client gem](https://github.com/google/google-api-ruby-client). Documentation is currently lacking but the code you likely care about if you stumbled upon this gem lives [here](https://github.com/google/google-api-ruby-client/tree/master/generated/google/apis/civicinfo_v2).

The intent of this gem is to provide a simple interface for retrieving common information related to the Google Civic API. I created this to make it easier for new developers to interface with common functionality associated with Google's Civic API. If you are comfortable reading code, consider using the client library linked above.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'google-civic-ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install google-civic-ruby

### Obtaining an API Key



## Usage

```ruby
require 'google-civic-ruby'

# put your real API key here
api_key = "xxxxxxxxxxxxxxxxxxxxxxx"
client = GoogleCivic::Client.new(api_key)

filter = {address: "1310 17th Street, Denver, CO 80202"}
representatives = client.representatives(filter)

representatives.first.name #=> "Diana DeGette"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/google-civic-ruby.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
