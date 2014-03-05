require './lib/meyer-reset'
require 'rubygems'
require 'bundler'
Bundler.setup

desc "Compile Sass"
task :sass => 'sass:compile'

namespace :sass do

  desc "Watch Sass"
  task :watch do
    puts "*** Watching Sass ***"
    system 'compass watch'
  end

  desc "Compile Sass"
  task :compile do
    puts "*** Compiling Sass ***"
    system 'compass compile'
  end

  desc "Compile Sass for production"
  task :prod do
    puts "*** Compiling Sass ***"
    system 'compass clean'
    system 'compass compile --output-style compressed --force'
  end

end

namespace :gem do

  desc "Build the gem"
  task :build do
    system "gem build *.gemspec"
  end

  desc "Build and release the gem"
  task :release => :build do
    system "gem push meyer-reset-#{MeyerReset::VERSION}.gem"
  end

end
