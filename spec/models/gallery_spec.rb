require 'rails_helper'

RSpec.describe Gallery, type: :model do
  it "is valid with name" do
    gallery = build(:gallery)
    expect(gallery).to be_valid
  end

  it "is invalid without a name" do
    gallery = build(:gallery)
    gallery.valid?
    expect(gallery.errors[:name]).to include("can't be blank")
  end

  it "is invalid with a duplicate name" do
    gallery1 = create(:gallery, name: "Glass")
    gallery2 = build(:gallery, name: "Glass")
    gallery2.valid?
    expect(gallery2.errors[:name]).to include("is already in use")
  end

  describe ".active" do
    it "only returns active galleries" do
      gallery1 = create(:gallery, archive: false)
      gallery2 = create(:gallery, archive: false)
      non_active_gallery = create(:gallery, archive: true)
      galleries = Gallery.active
      expect(galleries).to eq [gallery1, gallery2]
    end
  end
end
