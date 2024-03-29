$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rakeshed/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rakeshed"
  s.version     = Rakeshed::VERSION
  s.authors     = ["Adam Hallett"]
  s.email       = ["adam.t.hallett@gmail.com"]
  s.homepage    = "https://github.com/atomical/rakeshed"
  s.summary     = "Run rake tasks in the browser without blowing up your screen with a switch to the terminal."
  s.description = "Run rake tasks in the browser without blowing up your screen with a switch to the terminal."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"

end
