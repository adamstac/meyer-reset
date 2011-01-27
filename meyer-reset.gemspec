require 'lib/meyer-reset'

Gem::Specification.new do |s|
  # Release Specific Information
  s.version = MeyerReset::VERSION
  s.date = "2011-01-27"

  # Gem Details
  s.name = "meyer-reset"
  s.description = %q{Eric Meyer CSS Reset stylesheet as Sass to reduce browser inconsistencies such as default line heights, margins and font sizes of headings, etc.}
  s.summary = %q{Eric Meyer CSS Reset stylesheet as Sass}
  s.authors = ["Adam Stacoviak"]
  s.email = "adam@stacoviak.com"
  s.homepage = "http://adamstacoviak.com/"

  # Gem Files
  s.files = [
    "Rakefile",
    "README.mdown"
  ]
  s.files += Dir.glob("lib/**/*.*")
  s.files += Dir.glob("stylesheets/**/*.*")

  # Gem Bookkeeping
  s.has_rdoc = false
  s.required_rubygems_version = ">= 1.3.6"
  s.rubygems_version = %q{1.3.6}
  s.add_dependency("compass", [">= 0.10.5"])
end