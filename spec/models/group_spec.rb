require 'rails_helper'

describe Group do
  let!(:gallery) { create(:gallery)}
          gallery.id
  let!(:group) { create(:group) }


  it "is valid with a name and a thumbnail" do
    # group = Group.new(
    #   name: 'Glass',
    #   thumbnail: 1,
    #   gallery_id: 1)
      expect(:group).to be_valid
  end

  it "is invalid without a name"
  it "is invalid without a thumbnail"
end
