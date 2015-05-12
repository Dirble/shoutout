$:.push File.expand_path("../lib", __FILE__)
require "shoutout/version"

Gem::Specification.new do |s|
  s.name          = "shoutout"
  s.version       = Shoutout::VERSION

  s.platform      = Gem::Platform::RUBY
  s.author        = ["Douwe Maan", "Håkan Nylén"]
  s.email         = ["douwe@selenight.nl", "hakan@dun.se"]
  s.homepage      = "https://github.com/dirble/shoutout"
  s.description   = "A Ruby library for easily getting metadata from Shoutcast- and icecast-compatible audio streaming servers"
  s.summary       = "Read metadata from Shoutcast and Icecast streams"
  s.license       = "MIT"

  s.files         = Dir.glob("lib/**/*") + %w(LICENSE README.md Rakefile Gemfile)
  s.test_files    = Dir.glob("spec/**/*")
  s.require_path  = "lib"
  
  s.add_runtime_dependency     "tcp_timeout", "~> 0.1", ">= 0.1.1"
  s.add_development_dependency "rake", '~> 0'
  s.add_development_dependency "rspec", '~> 0'
end