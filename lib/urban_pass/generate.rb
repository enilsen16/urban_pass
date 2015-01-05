require 'open-uri'
require 'nokogiri'

module UrbanPass
  class Generate

    def generate
      # Generate word:
      urban = random_word

      # Remove the extra spaces
      phrase = remove_spaces(urban)

      # Return the length of the phrase and print out the word
      puts "Your new password is: #{phrase}"
      puts "The word is #{phrase_length(phrase)} charcters long"
    end

    def random_word
      page = Nokogiri::HTML(open("http://urbandictionary.com/random.php"))
      word = page.css('a.word')[0].text
    end

    def remove_spaces(phrase)
      phrase.gsub(" ", "")
    end


    def phrase_length(phrase)
      return phrase.length
    end
  end
end
