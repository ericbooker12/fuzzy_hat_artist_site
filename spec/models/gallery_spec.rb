require 'rails_helper'

RSpec.describe Gallery, type: :model do
  it "is valid with valid attributes" do
    gallery = create(:gallery)
    expect(gallery).to be_valid
  end

  describe "associations and validations" do
    it { should have_many(:collections) }

    it { should validate_presence_of(:name) }

    it { should validate_uniqueness_of(:name) }
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

  describe ".archived" do
    it "return archived galleries" do
      gallery1 = create(:gallery, archive: false)
      gallery2 = create(:gallery, archive: true)
      gallery3 = create(:gallery, archive: true)
      galleries = Gallery.archived
      expect(galleries).to eq [gallery2, gallery3]
    end
  end

end
