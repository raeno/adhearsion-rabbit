# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "adhearsion-rabbit"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["raeno"]
  s.date = "2013-10-08"
  s.description = "This plugin allows to subscribe to RabbitMQ messages and publish new"
  s.email = ["just.raeno@gmail.com"]
  s.files = ["lib/adhearsion-rabbit.rb", "lib/adhearsion-rabbit", "lib/adhearsion-rabbit/queue_processor.rb", "lib/adhearsion-rabbit/version.rb", "lib/adhearsion-rabbit/service.rb", "lib/adhearsion-rabbit/plugin.rb", "README.md", "Rakefile", "Gemfile", "spec/spec_helper.rb", "spec/adhearsion-rabbit", "spec/adhearsion-rabbit/controller_methods_spec.rb"]
  s.homepage = ""
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "Adhearsion plugin to work with RabbitMQ"
  s.test_files = ["spec/spec_helper.rb", "spec/adhearsion-rabbit", "spec/adhearsion-rabbit/controller_methods_spec.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<adhearsion>, ["~> 2.4"])
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0.10"])
      s.add_runtime_dependency(%q<bunny>, [">= 1.0.0.rc2"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.5"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
    else
      s.add_dependency(%q<adhearsion>, ["~> 2.4"])
      s.add_dependency(%q<activesupport>, [">= 3.0.10"])
      s.add_dependency(%q<bunny>, [">= 1.0.0.rc2"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<rspec>, ["~> 2.5"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<adhearsion>, ["~> 2.4"])
    s.add_dependency(%q<activesupport>, [">= 3.0.10"])
    s.add_dependency(%q<bunny>, [">= 1.0.0.rc2"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<rspec>, ["~> 2.5"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
  end
end
