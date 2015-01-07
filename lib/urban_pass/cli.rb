require "thor"
require "urban_pass/generate"

module UrbanPass
  class CLI < Thor

    desc "generate_phrase", "creates a new pass-phrase"
    def generate_phrase
      urban = UrbanPass::Generate.new
      urban.generate_phrase
    end
    default_task :generate_phrase
    # if ARGV.empty?
    #   UrbanPass::CLI.new.generate_phrase
    # end
  end
end
