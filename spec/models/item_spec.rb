require 'rails_helper'

RSpec.describe Item, type: :model do
  it "is valid with valid attributes" do
    item = create(:item)
    expect(item).to be_valid
  end

  describe Item do
    it { should have_attached_file(:image) }
    it { should validate_attachment_presence(:image) }
    it { should validate_attachment_content_type(:image).
                  allowing('image/png', 'image/gif').
                  rejecting('text/plain', 'text/xml') }
    it { should validate_attachment_size(:image).
                  less_than(2.megabytes) }
  end

end
