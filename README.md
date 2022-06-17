# MdiComponent
A lightweight Ruby on Rails ViewComponent that renders svg icons  from the [Material Design Icons][materialdesignicons_link] collection over 6700 icons.

## Usage

View component:
```ruby
render MdiComponent.new(Mdi::LanguageRuby, width: 72, height: 72, color: "#d02d32")
```

View helper:
```erb
<%= mdi_component(Mdi::LanguageRubyOnRails, width: 72, height: 72, color: "#d02d32") %>
```


## Installation
Add this line to your application's Gemfile:

```ruby
gem 'mdi_component'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install mdi_component
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

[hoodoo_software_link]: https://hoodoo.software
[materialdesignicons_link]: https://materialdesignicons.com