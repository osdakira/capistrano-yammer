lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/yammer/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-yammer"
  spec.version       = Capistrano::Yammer::VERSION
  spec.authors       = ["Akira Osada"]
  spec.email         = ["osd.akira@gmail.com"]
  spec.summary       = %q{capistrano notification for yammer}
  spec.description   = %q{capistrano notification for yammer}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "yammer_client"
  spec.add_dependency 'capistrano', '>= 2', '< 3'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
