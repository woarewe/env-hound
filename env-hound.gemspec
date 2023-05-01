require_relative 'lib/env_hound/version'

Gem::Specification.new do |spec|
  spec.name          = "env-hound"
  spec.version       = EnvHound::VERSION
  spec.authors       = ["woarewe"]
  spec.email         = ["rostislav.zhuravsky@gmail.com"]

  spec.summary       = %q{SUMMARY}
  spec.description   = %q{DESCRIPTION}
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.5.0")


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_runtime_dependency 'dry-cli', '~> 1.0'

  spec.add_development_dependency 'minitest', '~> 5.18'
end
