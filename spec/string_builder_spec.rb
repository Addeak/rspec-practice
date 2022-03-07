require 'string_builder'

RSpec.describe StringBuilder do

  it "returns size of string" do
    str = StringBuilder.new
    str.add("Hey")
    str.add("Ho")
    result = str.size
    expect(result).to eq 5
  end

  it "returns full string" do
    str = StringBuilder.new
    str.add("Hey")
    str.add("Ho")
    result = str.output
    expect(result).to eq "HeyHo"
  end
  
end