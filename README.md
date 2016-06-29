# Hunspell Dictionaries

[![license](https://img.shields.io/badge/license-GPLv2-blue.svg)](https://raw.githubusercontent.com/authorea/LaTeXML-Ruby/master/LICENSE)
[![Gem Version](https://badge.fury.io/rb/hunspell-dictionaries.svg)](https://badge.fury.io/rb/hunspell-dictionaries)

Pakages the [Libreoffice hunspell dictionaries](https://github.com/LibreOffice/dictionaries) as a Gem.

We use this module at [Authorea](http://www.authorea.com) for spellchecking our authors' LaTeX and MarkDown sources written in the [ACE](https://ace.c9.io/#nav=about) editor.

## Installation

Add this line to your application’s Gemfile:

```ruby
gem 'hunspell-dictionaries'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hunspell-dictionaries

## Usage

Serves dictionaries at `/assets/`

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/authorea/hunspell-dictionaries-gem. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [GPLv2 License](http://opensource.org/licenses/GPL-2.0).
