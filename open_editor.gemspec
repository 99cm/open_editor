# coding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'open_editor/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'open_editor'
  s.version     = OpenEditor.version
  s.summary     = 'Adds support for WYSIWYG editors to Open'
  s.description = 'Currently supported editor is TinyMCE'
  s.required_ruby_version = '>= 2.5.0'

  s.authors       = ['Leo Wang']
  s.homepage      = 'https://github.com/99cm/open_editor'
  s.license       = 'BSD-3'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'open_backend', spree_version
  s.add_dependency 'spree_extension'
  s.add_dependency 'tinymce-rails', '~> 5.0.0'

  s.add_development_dependency 'i18n-spec'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'pry-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_bot'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3', '~> 1.3.6'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'puma'
end