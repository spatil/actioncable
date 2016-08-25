#version = File.read(File.expand_path("../../RAILS_VERSION", __FILE__)).strip
#puts version

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = "actioncable"
  s.version     = "4.2.0" 
  s.summary     = "WebSocket framework for Rails."
  s.description = "Structure many real-time application concerns into channels over a single WebSocket connection."

  s.required_ruby_version = ">= 2.2.1"

  s.license = "MIT"

  s.author   = ["Pratik Naik", "David Heinemeier Hansson"]
  s.email    = ["pratiknaik@gmail.com", "david@loudthinking.com"]
  s.homepage = "http://rubyonrails.org"

  s.files        = Dir["CHANGELOG.md", "MIT-LICENSE", "README.md", "lib/**/*"]
  s.require_path = "lib"

  s.add_dependency "rails", "~> 4.2.0"
  s.add_dependency "actionpack", "~> 4.2.0" #version
  s.add_dependency "concurrent-ruby"

  s.add_dependency "nio4r",            "~> 1.2"
  s.add_dependency "websocket-driver", "~> 0.6.1"

  s.add_development_dependency "puma"
  s.add_development_dependency "blade"
  s.add_development_dependency "mocha"
  s.add_development_dependency "redis"
  s.add_development_dependency "pg"
  s.add_development_dependency "em-hiredis"
end
