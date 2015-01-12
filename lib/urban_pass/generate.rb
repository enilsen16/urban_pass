require 'open-uri'
require 'nokogiri'
require 'clipboard'
require 'thread'

module UrbanPass
  class Generate

    def generate_word
      # Generate word:
      urban = random_word

      # Remove the extra spaces
      remove_spaces(urban)
    end

    def generate_phrase
      threads = []
      4.times do
        threads << Thread.new { Thread.current["word"] = random_word }
      end
      phrase = [] # two arrays > string concatenation
      threads.each {|t| t.join; phrase << t["word"]}
      phrase = phrase.join
      pass_phrase = remove_spaces(phrase)
      copy(pass_phrase)
      return pass_phrase
    end

    def random_word
      page = Nokogiri::HTML(open("http://urbandictionary.com/random.php"))
      page.css('a.word')[0].text
    rescue SocketError
        puts "Your not connected to the internet, silly!"
        exit
    end

    def remove_spaces(phrase)
      phrase.gsub(" ", "")
    end


    def phrase_length(phrase)
      return phrase.length
    end


    def copy(phrase)
      word = Clipboard.copy(phrase)
      if Clipboard.paste == phrase
        return word
      end
    end
  end
end
