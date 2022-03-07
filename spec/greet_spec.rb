require 'greet'

RSpec.describe "greet method" do
  it "takes 'Jake' and returns 'Hello, Jake!'" do
    result = greet("Jake")
    expect(result).to eq "Hello, Jake!"
  end
end