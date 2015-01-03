require "test_helper"

describe "Generate" do
  before do
    @urban = UrbanPass::Generate.new
    @word = @urban.random_word
  end

  it "opens a new html document" do
    @word.wont_be_nil
  end

  it "removes all spaces from the word" do
    urban = @urban.remove_spaces(@word)
    urban.wont_include " "
  end

  it "returns length of word" do
    word = @urban.remove_spaces(@word)
    word_size = @urban.phrase_length(word)
    word_size.must_equal word.length
  end
end
