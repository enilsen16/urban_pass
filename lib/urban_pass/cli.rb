require "thor"
require "urban_pass/generate"

module UrbanPass
  class CLI < Thor

    desc "generate_phrase", "Creates a new pass-phrase"
    def generate_phrase
      urban = UrbanPass::Generate.new
      pass_phrase = urban.generate_phrase
      puts "Your password is #{pass_phrase}"
      puts "It was copied correctly"
    end

    desc "define WORD", "defines a word you may not know"
    def define(*word)
      words = word.join(" ")
      urban = UrbanPass::Generate.new
      entry = urban.defination(words)
      word = words.upcase
      puts "The defination for #{ word } is:"
      puts entry.definitions.first
    end

    default_task :generate_phrase
  end
end
