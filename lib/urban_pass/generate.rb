require 'open-uri'
require 'nokogiri'

module UrbanPass
  class Generate
    def initialize
    end

    def random_word
      page = Nokogiri::HTML(open("http://urbandictionary.com/random.php"))
      word = page.css('a.word')[0].text
    end

    def remove_spaces(phrase)
      phrase.gsub(" ", "")
    end

    def generate
    end

    def phrase_length(phrase)
      return phrase.length
    end
  end
end
