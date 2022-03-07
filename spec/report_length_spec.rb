require 'report_length'

RSpec.describe "report_length method" do
  
  it "returns a message with the length of a string" do
    result = report_length("Harry Styles")
    expect(result).to eq "This string was 12 characters long."
  end

  it "returns a message with the length of a string" do
    result = report_length("hu8T34P!?0")
    expect(result).to eq "This string was 10 characters long."
  end

end