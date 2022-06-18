# frozen_string_literal: true

$:.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'mdi/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name = 'mdi_component'
  spec.version = Mdi::VERSION
  spec.authors = ['Andriy Protsyk']
  spec.email = ['aprotsyk@gmail.com']
  spec.homepage = 'https://github.com/hoodoo-software/mdi_component'
  spec.summary = 'Material Design Icons view component for Ruby on Rails'
  spec.description = 'A lightweight Ruby on Rails view component that renders svg icons from the Material Design Icons collection with over 6,700 icons'
  spec.license = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.pkg.github.com/hoodoo-software'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = Dir['{app,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.required_ruby_version = '>= 2.6.0'

  spec.add_runtime_dependency 'rails', '>= 6.0', '< 8.0'
  spec.add_runtime_dependency 'view_component', '~> 2.0'
end
