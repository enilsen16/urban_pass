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

    def remove_spaces(word)
      word.gsub(" ", "")
    end

    def generate
    end

    def word_length(word)
      return word.length
    end
  end
end
