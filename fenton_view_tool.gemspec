# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fenton_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "fenton_view_tool"
  spec.version       = FentonViewTool::VERSION
  spec.authors       = ["Alex Fenton"]
  spec.email         = ["xela.notnef@gmail.com"]

  spec.summary       = %q{Adds specific view tools for my application}
  spec.description   = %q{Generates HTML for my Rails application}
  spec.homepage      = "http://devcamp.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
