# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "adhearsion_rabbit/version"

Gem::Specification.new do |s|
  s.name        = "adhearsion_rabbit"
  s.version     = AdhearsionRabbit::VERSION
  s.authors     = ["Plugin Author"]
  s.email       = ["author@plugin.com"]
  s.homepage    = ""
  s.summary     = %q{Adhearsion plugin to work with RabbitMQ}
  s.description = %q{This plugin allows to subscribe to RabbitMQ messages and publish new}

  s.rubyforge_project = "adhearsion_rabbit"

  # Use the following if using Git
  # s.files         = `git ls-files`.split("\n")
  # s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.files         = Dir.glob("{lib}/**/*") + %w( README.md Rakefile Gemfile)
  s.test_files    = Dir.glob("{spec}/**/*")
  s.require_paths = ["lib"]

  s.add_runtime_dependency %q<adhearsion>, ["~> 2.4"]
  s.add_runtime_dependency %q<activesupport>, [">= 3.0.10"]
  s.add_runtime_dependency %q<bunny>, [">= 1.0.0.rc2"]

  s.add_development_dependency %q<bundler>, ["~> 1.0"]
  s.add_development_dependency %q<rspec>, ["~> 2.5"]
  s.add_development_dependency %q<rake>, [">= 0"]
  s.add_development_dependency %q<guard-rspec>
 end
