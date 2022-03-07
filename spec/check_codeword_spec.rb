require 'check_codeword'

RSpec.describe "check_codeword method" do
  
  it "accepts 'horse' as correct" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end

  it "tells if you are close" do
    result = check_codeword("house")
    expect(result).to eq "Close, but nope."
  end

  it "tells you if you are totally wrong" do
    result = check_codeword("pizza")
    expect(result).to eq "WRONG!"
  end

end