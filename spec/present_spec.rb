require 'present'

RSpec.describe Present do

  it "wraps and unwraps" do
    gift = Present.new
    gift.wrap("jacket")
    expect(gift.unwrap).to eq "jacket" 
  end

  context "when already wrapped" do
    it "fails" do
      gift = Present.new
      gift.wrap("mug")
      expect { gift.wrap("mug") }.to raise_error "A contents has already been wrapped."
    end
  end

  context "no wrapped contents" do
    it "fails" do
      gift = Present.new
      expect { gift.unwrap }.to raise_error "No contents have been wrapped."
    end
  end

end