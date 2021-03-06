# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'user_agent_list/version'

Gem::Specification.new do |spec|
  spec.name          = "user_agent_list"
  spec.version       = UserAgentList::VERSION
  spec.authors       = ["chebyte"]
  spec.email         = ["mauro@hashdog.com"]

  spec.summary       = %q{Minimal ruby gem for list all user-agents supported by useragentstring.com site!}
  spec.description   = %q{Minimal ruby gem for list all user-agents supported by useragentstring.com site!}
  spec.homepage      = "http://hashdog.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "nokogiri", "~> 1.6.6.2"
end
