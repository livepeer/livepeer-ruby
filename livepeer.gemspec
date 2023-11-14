# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

Gem::Specification.new do |s|
  s.name        = 'livepeer'
  s.version     = '0.0.1'
  s.platform    = Gem::Platform::RUBY
  s.licenses    = ['MIT']
  s.summary     = ''
  s.homepage    = 'https://github.com/livepeer/livepeer-ruby'
  s.description = 'Ruby library for the Livepeer API.'
  s.authors     = ['Livepeer']
  s.metadata    = {
    'homepage_uri' => 'https://docs.livepeer.org/sdks/ruby',
    'documentation_uri' => 'https://docs.livepeer.org/sdks/ruby',
    'source_code_uri' => 'https://github.com/livepeer/livepeer-ruby'
  }

  s.files         = Dir['{lib,test}/**/*']
  s.require_paths = ['lib']
  s.required_ruby_version = '>= 3.0'

  s.add_dependency('faraday')
  s.add_dependency('faraday-multipart')
  s.add_dependency('rack')
  s.add_dependency('rake')
  s.add_dependency('sorbet')
  s.add_dependency('tapioca')

  s.add_development_dependency('minitest')
  s.add_development_dependency('rubocop')
  s.add_development_dependency('sorbet-runtime')
end
