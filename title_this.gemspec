require_relative 'lib/title_this/version'

Gem::Specification.new do |spec|
  spec.name          = 'title_this'
  spec.version       = TitleThis::VERSION
  spec.authors       = ['Chris Sweeney']
  spec.email         = ['chris.sweeney@shopify.com']

  spec.summary       = %q{Turns a String, Array, or Hash(key) into a titleized version of itself}
  spec.homepage      = 'https://github.com/BitterChris/title_this'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/BitterChris/title_this'
  spec.metadata['changelog_uri'] = 'https://github.com/BitterChris/title_this/blob/master/README.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rspec'
end
