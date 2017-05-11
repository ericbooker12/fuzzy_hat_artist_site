require 'rails_helper'

RSpec.describe Collection, type: :model do
  it "is valid with valid attributes" do
    collection = create(:collection)
    expect(collection).to be_valid
  end

  describe "associations and validations" do
    it { should have_many(:items) }

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:thumbnail) }

    it { should validate_uniqueness_of(:name) }
    it { should validate_numericality_of(:thumbnail) }

  end

  describe "item" do
    it "returns warning when destroy collection with items" do
      collection = create(:collection)
      new_item = create(:item)
      collection.items << new_item
      collection.save
      collection.destroy
      expect(collection.errors[:base]).to include("Cannot delete record because dependent items exist")
    end
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
