$:.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'mdi/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name = 'mdi_component'
  spec.version = Mdi::VERSION
  spec.authors = ['Andriy Protsyk']
  spec.email = ['aprotsyk@gmail.com']
  spec.homepage = 'https://hoodoo.software'
  spec.summary = 'Lightweight set of MDI icons for Rails'
  spec.description = 'A collection of material design icons for use in Rails'
  spec.license = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = Dir['{app,config,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.required_ruby_version = '>= 2.6.0'

  spec.add_dependency 'rails', '>= 6.0'
  spec.add_dependency 'view_component', '>= 2.0'
end
