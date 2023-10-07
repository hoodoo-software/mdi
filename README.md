# mdi

[![Gem Version](https://badge.fury.io/rb/mdi.svg)](https://badge.fury.io/rb/mdi)

A view helper for Ruby on Rails that renders inline SVG icons from the [Material Design Icons][materialdesignicons_link] collection with over 7,000 icons


## Usage

mdi_icon helper that will render inline svg tag into your view:

```ruby
mdi_icon(Mdi::LanguageRuby, width: 72, height: 72, color: "#d02d32")
```

```svg
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" width="72" height="72" color="#d02d32">
  <path d="M18.8,2.07C21.32,2.5 22.04,4.23 22,6.04V6L20.86,20.93L6.08,21.94H6.09C4.86,21.89 2.13,21.77 2,17.95L3.37,15.45L6.14,21.91L8.5,14.29L8.45,14.3L8.47,14.28L16.18,16.74L14.19,8.96L21.54,8.5L15.75,3.76L18.8,2.06V2.07M2,17.91V17.93L2,17.91V17.91M6.28,6.23C9.24,3.28 13.07,1.54 14.54,3.03C16,4.5 14.46,8.12 11.5,11.06C8.5,14 4.73,15.84 3.26,14.36C1.79,12.87 3.3,9.17 6.27,6.23H6.28Z"></path>
</svg>
```

Collection of all available icons can be found in the [Mdi][mdi_models_link] namespace.

## Material Design Icons

* View at [all available icons][materialdesignicons_link]
* [Changelog Guide][materialdesignicons_changelog_link]

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

[materialdesignicons_link]: https://pictogrammers.com/library/mdi/
[mdi_models_link]: https://rubydoc.info/github/hoodoo-software/mdi/Mdi
[materialdesignicons_changelog_link]: https://pictogrammers.com/docs/library/mdi/releases/changelog