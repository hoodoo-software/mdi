# mdi
A view helper for Ruby on Rails that renders SVG icons from the [Material Design Icons][materialdesignicons_link] collection with over 6,700 icons

## Usage

View helper:
```erb
<%= mdi_icon(Mdi::LanguageRubyOnRails, width: 72, height: 72, color: "#d02d32") %>
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'mdi'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install mdi
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

[materialdesignicons_link]: https://materialdesignicons.com