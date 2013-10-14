# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'adhearsion-rabbit/version'

Gem::Specification.new do |s|
  s.name        = 'adhearsion-rabbit'
  s.version     = AdhearsionRabbit::VERSION
  s.authors     = %w(raeno)
  s.email       = %w(just.raeno@gmail.com)
  s.homepage    = ''
  s.summary     = %q{Adhearsion plugin to work with RabbitMQ}
  s.description = %q{This plugin allows to do any operations withing separate channel inside Adhearsion }

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")

  s.require_paths = %w(lib)

  s.add_runtime_dependency %q<adhearsion>, ['~> 2.4']
  s.add_runtime_dependency %q<activesupport>, ['>= 3.0.10']
  s.add_runtime_dependency %q<bunny>, ['>= 1.0.0.rc2']

  s.add_development_dependency %q<bundler>, ['~> 1.0']
  s.add_development_dependency %q<rspec>, ['~> 2.5']
  s.add_development_dependency %q<rake>, ['>= 0']
  s.add_development_dependency %q<guard-rspec>
end
