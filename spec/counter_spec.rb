require 'counter'

RSpec.describe Counter do

  it "keeps track of a count and returns it" do
    counter = Counter.new
    counter.add(2)
    counter.add(5)
    result = counter.report
    expect(result).to eq "Counted to 7 so far."
  end

  it "keeps track of a count and returns it" do
    counter = Counter.new
    counter.add(13)
    counter.add(2)
    counter.add(5)
    result = counter.report
    expect(result).to eq "Counted to 20 so far."
  end
  
end