require 'lib/meyer-reset'
require 'rubygems'
require 'bundler/setup'

Bundler.require(:default)

namespace :sass do

  desc "Converts the Sass to SCSS"
  task :convert do
    puts "*** Converting Sass to SCSS ***"
    system "sass-convert stylesheets/*.sass stylesheets/*.scss"
  end
  
  desc "Compile new styles"
  task :compile do
    puts "*** Compiling styles ***"
    # Default
    system "compass compile stylesheets/_meyer-reset.sass"
    system "mv stylesheets/compiled/_meyer-reset.css stylesheets/compiled/meyer-reset.css"
    # Compressed
    system "compass compile stylesheets/_meyer-reset.sass --output-style=compressed --force"
    system "mv stylesheets/compiled/_meyer-reset.css stylesheets/compiled/meyer-reset-compressed.css"
  end

end

namespace :css do
  
  desc "Clear the styles"
  task :clear do
    puts "*** Clearing styles ***"
    system "rm -Rfv stylesheets/compiled"
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