# frozen_string_literal: true

require_relative 'lib/mdi/version'

Gem::Specification.new do |spec|
  spec.name = 'mdi'
  spec.version = Mdi::VERSION
  spec.authors = ['Andriy Protsyk']
  spec.email = ['aprotsyk@gmail.com']
  spec.homepage = 'https://github.com/hoodoo-software/mdi'
  spec.summary = 'Material Design Icons view helper for Ruby on Rails'
  spec.description = 'A view helper for Ruby on Rails that renders inline SVG icons from the Material Design Icons'\
                     ' collection with over 7,000 icons'
  spec.license = 'MIT'
  spec.metadata = {
    'bug_tracker_uri' => 'https://github.com/hoodoo-software/mdi/issues',
    'documentation_uri' => 'https://rubydoc.info/github/hoodoo-software/mdi',
    'homepage_uri' => 'https://github.com/hoodoo-software/mdi',
    'source_code_uri' => 'https://github.com/hoodoo-software/mdi',
  }

  spec.files = Dir['{app,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.required_ruby_version = '>= 2.7'

  spec.add_runtime_dependency 'rails', '>= 5.0', '< 8.0'

  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rubocop', '~> 1.30'
  spec.add_development_dependency 'rubocop-minitest', '~> 0.20'
  spec.add_development_dependency 'rubocop-rails', '~> 2.15'
end
