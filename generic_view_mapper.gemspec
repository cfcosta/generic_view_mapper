lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "generic_view_mapper/version"

Gem::Specification.new do |spec|
  spec.name          = "generic_view_mapper"
  spec.version       = GenericViewMapper::VERSION
  spec.authors       = ["Cainã Costa"]
  spec.email         = ["cacosta@redhat.com"]

  spec.summary       = %q{Generalistic view layer to match and present incoming data}
  spec.homepage      = "https://github.com/cfcosta/match_view"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", ">= 5", "< 8"
  spec.add_dependency "multi_json", "~> 1"
  spec.add_dependency "virtus", "~> 1"
  spec.add_dependency "dry-container", "~> 0.6"
  spec.add_dependency "descendants_tracker", "~> 0.0.4"

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rspec-given", "~> 3.8"
  spec.add_development_dependency "pry-byebug", "~> 3.5"
end
