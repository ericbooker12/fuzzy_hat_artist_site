require 'rails_helper'

RSpec.describe Item, type: :model do
  it "is valid with valid attributes" do
    item = create(:item)
    expect(item).to be_valid
  end

end
