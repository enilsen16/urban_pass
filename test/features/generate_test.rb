require "test_helper"

describe "Generate" do
  before do
    @word = UrbanPass::Generate.new.random_word
  end

  it "opens a new html document" do
    @word.wont_be_nil
  end

  it "removes all spaces from the word" do
    urban = UrbanPass::Generate.new.remove_spaces(@word)
    urban.wont_include " "
  end
end
