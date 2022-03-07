require 'gratitudes'

RSpec.describe Gratitudes do

  it "gives gratitude to a list of names" do
    list = Gratitudes.new
    list.add("John")
    list.add("Sue")
    list.add("me")
    result = list.format
    expect(result).to eq "Be grateful for: John, Sue, me"
  end

  it "gives gratitude to an empty list" do
    list = Gratitudes.new
    result = list.format
    expect(result).to eq "Be grateful for: "
  end

end
