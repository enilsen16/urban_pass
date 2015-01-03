require "test_helper"

describe "Generate" do
  it "opens a new html document" do
    urban = UrbanPass::Generate.new
    word = urban.random_word
    puts word
    word.wont_be_nil
  end

  it "" do
  end
end
