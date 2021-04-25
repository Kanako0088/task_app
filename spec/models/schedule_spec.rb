require 'rails_helper'

# RSpec.describe Schedule, type: :model do
#   # pending "add some examples to (or delete) #{__FILE__}"
#   it 'gets gate class depends on gate number' do
#   end
# end

RSpec.describe "四則演算" do
  it "1+1って2になるんだぜ" do
    expect(1 + 1).to eq 2
  end
  it "10-9って1になるんだぜ" do
    expect(10 - 9).to eq 1
  end
end