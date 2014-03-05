require './lib/meyer-reset'

Gem::Specification.new do |s|
  # Release Specific Information
  s.version = MeyerReset::VERSION
  s.date = "2014-03-04"

  # Gem Details
  s.name = "meyer-reset"
  s.description = %q{Eric Meyer CSS reset in Sass}
  s.summary = %q{Eric Meyer CSS reset in Sass}
  s.authors = ["Adam Stacoviak"]
  s.email = "adam@stacoviak.com"
  s.homepage = "http://adamstacoviak.com/"

  # Gem Files
  s.files = [
    "README.md"
  ]
  s.files += Dir.glob("lib/**/*.*")
  s.files += Dir.glob("stylesheets/**/*.*")

  # Gem Bookkeeping
  s.has_rdoc = false
  s.required_rubygems_version = ">= 2.2.1"
  s.rubygems_version = %q{2.2.1}
  s.add_dependency("compass", ["~> 0.10"])
end
