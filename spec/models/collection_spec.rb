require 'rails_helper'

RSpec.describe Collection, type: :model do

  it "is valid with a name and a thumbnail" do
    collection = build(:collection)
    expect(collection).to be_valid
  end

  it "is invalid without a name" do
    collection = build(:collection, name: nil)
    collection.valid?
    expect(collection.errors[:name]).to include("can't be blank")
  end

  it "is invalid without a thumbnail" do
    collection = build(:collection, thumbnail: nil)
    collection.valid?
    expect(collection.errors[:thumbnail]).to include("can't be blank")
  end

  it "is invalid with a duplicate name" do
    collection1 = create(:collection, name: "Primordial")
    collection2 = build(:collection, name: "Primordial")
    collection2.valid?
    expect(collection2.errors[:name]).to include("has already been taken")
  end

  describe ".active" do
    it "only returns active collections" do
      collection1 = create(:collection, archive: false)
      collection2 = create(:collection, archive: false)
      non_active_collection = create(:collection, archive: true)
      collections = Collection.active
      expect(collections).to eq [collection1, collection2]
    end
  end


end
