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
      arr = []
      4.times do |i|
        arr[i] = Thread.new {
          Thread.current["word"] = generate_word
        }
      end
      arr2 = []
      arr.each do |t|
        t.join
        arr2 << t["word"]
      end
      pass_phrase = arr2.join("")
      pass_phrase = remove_spaces(pass_phrase)
      copy(pass_phrase)
      return pass_phrase
    end

    def random_word
      page = Nokogiri::HTML(open("http://urbandictionary.com/random.php"))
      page.css('a.word')[0].text
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
