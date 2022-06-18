# frozen_string_literal: true

require_relative 'lib/mdi/version'

Gem::Specification.new do |spec|
  spec.name = 'mdi'
  spec.version = Mdi::VERSION
  spec.authors = ['Andriy Protsyk']
  spec.email = ['aprotsyk@gmail.com']
  spec.homepage = 'https://github.com/hoodoo-software/mdi'
  spec.summary = 'Material Design Icons view helper for Ruby on Rails'
  spec.description = 'A view helper for Ruby on Rails that renders SVG icons from the Material Design Icons collection with over 6,700 icons'
  spec.license = 'MIT'

  spec.files = Dir['{app,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.required_ruby_version = '>= 2.6'

  spec.add_runtime_dependency 'rails', '>= 5.0', '< 8.0'

  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'standard', '~> 1.12'
end
