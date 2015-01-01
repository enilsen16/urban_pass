require "test_helper"

describe "Web" do
  before do
    @web = UrbanPass::Web.new
  end

  it "must navigate to the correct to the correct URL" do
    expected = 'http://www.urbandictionary.com/random.php'
    actual = @web.random
    assert_match(expected, actual)
  end

end
