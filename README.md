puppet-lint-anchor-check
========================

[![Build Status](https://img.shields.io/travis/voxpupuli/puppet-lint-anchor-check.svg)](https://travis-ci.org/voxpupuli/puppet-lint-anchor-check)
[![Gem Version](https://img.shields.io/gem/v/puppet-lint-anchor-check.svg)](https://rubygems.org/gems/puppet-lint-anchor-check)
[![Gem Downloads](https://img.shields.io/gem/dt/puppet-lint-anchor-check.svg)](https://rubygems.org/gems/puppet-lint-anchor-check)
[![Coverage Status](https://coveralls.io/repos/github/voxpupuli/puppet-lint-anchor-check/badge.svg?branch=master)](https://coveralls.io/github/voxpupuli/puppet-lint-anchor-check?branch=master)
[![Dependency Status](https://gemnasium.com/badges/github.com/voxpupuli/puppet-lint-anchor-check.svg)](https://gemnasium.com/github.com/voxpupuli/puppet-lint-anchor-check)

A puppet-lint plugin to check that `anchor` resources are unused.

## Installing

### From the command line

```shell
$ gem install puppet-lint-anchor-check
```

### In a Gemfile

```ruby
gem 'puppet-lint-anchor-check', :require => false
```

## Checks

### anchor resource use

The anchor pattern should be replaced with the `contain` function.

#### What you have done

```puppet
anchor { 'foo::begin': }
-> class { 'foo::install': }
-> class { 'foo::config': }
~> class { 'foo::service': }
-> anchor { 'foo::end': }
```

#### What you should have done

```puppet
contain 'foo::install'
contain 'foo::config'
contain 'foo::service'

Class['foo::install']
-> Class['foo::config']
~> Class['foo::service']
```

# Copyright

Copyright 2017 Alexander Fisher

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
