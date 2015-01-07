require "thor"
require "urban_pass/generate"

module UrbanPass
  class CLI < Thor

    desc "generate_phrase", "creates a new pass-phrase"
    def generate_phrase
      urban = UrbanPass::Generate.new
      pass_phrase = urban.generate_phrase
      puts "Your password is #{pass_phrase}"
      puts "It was copied correctly"
    end

    default_task :generate_phrase
  end
end
