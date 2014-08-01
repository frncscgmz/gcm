require 'optparse'
require 'gcm'

class Cli

   def self.run(args, out = STDOUT)
      OptionParser.new{ |opts|
        opts.banner = "Usage:\n    gcm [options] <location>"
        opts.separator "\nOptions: "

         opts.on_tail("-v", "--version", "Print version number") do
            require "rubygems"
            spec = Gem::Specification::load("../gcm.gemspec")
            puts "gcm #{spec.version}\n"
            exit
         end
      }.parse!(args)

   end
end
