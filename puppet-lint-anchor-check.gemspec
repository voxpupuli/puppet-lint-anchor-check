Gem::Specification.new do |spec|
  spec.name        = 'puppet-lint-anchor-check'
  spec.version     = '3.0.0'
  spec.homepage    = 'https://github.com/voxpupuli/puppet-lint-anchor-check'
  spec.license     = 'Apache-2.0'
  spec.author      = 'Vox Pupuli'
  spec.email       = 'voxpupuli@groups.io'
  spec.files       = Dir[
    'README.md',
    'LICENSE',
    'lib/**/*',
    'spec/**/*',
  ]
  spec.summary     = 'puppet-lint check to validate legacy anchor pattern is not used'
  spec.description = <<-EOF
    A check for puppet-lint that validates no anchor resources are used
  EOF

  spec.required_ruby_version = '>= 3.2'

  spec.add_dependency 'puppet-lint', '~> 5.1'
end
