
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "simpson_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "simpson_view_tool"
  spec.version       = SimpsonViewTool::VERSION
  spec.authors       = ["Steph Simpson"]
  spec.email         = ["stephasimpson911@gmail.com"]

  spec.summary       = %q{View specific methods for applications including a copyright generator.}
  spec.description   = %q{Copyright generator which automatically updates the year, allows you to put in your name and a message.}
  spec.homepage      = "http://www.linkedin.com/in/sjs16"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
