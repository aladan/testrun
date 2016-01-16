# Testrun

Use this gem to check the stability of your tests.
There are situations when some test(s) fail or pass with any changes in code. Testrun simply run test(s) several times and outputs results into text file.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'testrun'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install testrun

## Usage

To create file for results: 
    $ rake testrun:create
To run tests execute:
    $ rake testrun:run[number, path/to/your/spec.rb]
  where number is the number of times you want to run specified test(s);
        path/to/your/spec.rb is the path to your spec.
Notice that when you execute $ rake testrun:run[number, path/to/your/spec.rb] the testrun_results.txt file for results will be created automatically(i.e. there is actually no need to run create command).

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/testrun. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

