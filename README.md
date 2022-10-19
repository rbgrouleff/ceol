# Ceol

This is a command line interface for turning the volume up and down on a Denon CEOL DRA-N5/RCD-N8 system.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ceol'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install ceol

## Configuration

Either add a `.ceolrc` file to `$HOME` dir with the content

```
IPADDR=<ip address of your CEOL system>
```

or define a `CEOL_IPADDR` environment variable with the ip address of your CEOL system.

## Usage

In the command line run the executable:

```
$ ceol + # turns the volume up by 1
$ ceol ++ # turns the volume up by 2 and so on
$ ceol - # turns the volume down by 1
$ ceol -- # turns the volume down by 2 and so on
$ ceol off # powers off to standby
$ ceol on # powers on from standby
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/rbgrouleff/ceol. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/rbgrouleff/ceol/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Ceol project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/rbgrouleff/ceol/blob/main/CODE_OF_CONDUCT.md).
