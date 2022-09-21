# FastUuid

Generate, parse UUID faster. Supports UUID v4 and v7.

## Installation

Add to `Gemfile`

    $ bundle add fast_uuid

Or install by:

    $ gem install fast_uuid

## Usage

```ruby
FastUUID.match?(uuid)
# => true

FastUUID.v4
# =>

FastUUID.v7
# =>

time = FastUUID.time(uuid)
# => 2022-09-21 20:49:07 +0900

time.class
# => Time
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the FastUuid project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/JuanitoFatas/fast_uuid/blob/main/CODE_OF_CONDUCT.md).
