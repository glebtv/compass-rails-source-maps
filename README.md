# Compass Rails Source Maps

A small monkeypatch to enable sourcemaps with compass-rails

Heavily based on https://github.com/vhyza/sass-rails-source-maps

That gem doesn't work as-is with compass as compass-rails patches default sass\sprockets code

## Installation

Add this line to your application's Gemfile:

    group :development do
      gem 'compass-rails-source-maps'
    end

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install compass-rails-source-maps

## Usage

See https://github.com/vhyza/sass-rails-source-maps

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
