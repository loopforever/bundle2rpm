spec = Gem::Specification.new do |s|
  s.name = "bundle2rpm"
  s.version = "1.0.4"
  s.platform = Gem::Platform::RUBY
  s.date = "2011-07-12"
  s.rubyforge_project = "bundle2rpm"
  s.summary = "Convert Bundler gem bundles into RPMs."
  s.description = "Turns your gem bundles into RPMs!"

  s.homepage = "http://loopforever.com" 
  s.authors = ["Matt Savona"]
  s.email = "matt.savona@gmail.com"

  s.has_rdoc = false

  s.required_rubygems_version = ">= 1.3.6"

  s.bindir = "bin"
  s.require_paths = ["lib"]
  s.executables << "bundle2rpm"
  s.files = `git ls-files`.split("\n") 

  s.add_dependency("bundler", "~> 1.0.10")
end
