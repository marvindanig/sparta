
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sparta/version"

Gem::Specification.new do |spec|
  spec.name          = "sparta"
  spec.version       = Sparta::VERSION
  spec.authors       = ["Marvin Danig"]
  spec.email         = ["marvin@marvindanig.com"]

  spec.summary       = %q{ Add structured data to your rails views: JSON-LD. }
  spec.description   = %q{ Sparta provides rails helpers to add structured data (JSON-LD) on your views. It will fight for you. }
  spec.homepage      = "https://github.com/marvindanig/sparta.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
