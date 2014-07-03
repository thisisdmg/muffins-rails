require_relative 'lib/muffins/rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'muffins-rails'
  spec.version       = Muffins::Rails::VERSION
  spec.authors       = ['Stefanie Böhme', 'Tobias Bühlmann']
  spec.email         = ['s.boehme@thisisdmg.com', 't.buehlmann@thisisdmg.com']
  spec.summary       = 'Adds the Muffin library to your Rails Application.'
  spec.homepage      = 'https://github.com/thisisdmg/muffins-rails'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split("\n")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'railties', '~> 4.1'
  spec.add_runtime_dependency 'sass-rails', '~> 4.0'
  spec.add_runtime_dependency 'compass-rails', '~> 1.1'

  spec.add_development_dependency 'bundler', '~> 1.6'
end
