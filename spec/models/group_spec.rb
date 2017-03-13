require 'rails_helper'

RSpec.describe Group, type: :model do

  it "is valid with a name and a thumbnail" do
    group = build(:group)
    expect(group).to be_valid
  end

  it "is invalid without a name" do
    group = build(:group, name: nil)
    group.valid?
    expect(group.errors[:name]).to include("can't be blank")
  end

  it "is invalid without a thumbnail" do
    group = build(:group, thumbnail: nil)
    expect(group.errors[:thumbnail]).to include("can't be blank")
  end

  it "is invalid with a duplicate name" do
    group1 = create(:group, name: "Primordial")
    group2 = build(:group, name: "Primordial")
    group2.valid?
    expect(group2.errors[:name]).to include("is already in use")
  end

  describe ".active" do
    it "only returns active groups" do
      group1 = create(:group, archive: false)
      group2 = create(:group, archive: false)
      non_active_group = create(:group, archive: true)
      groups = Group.active
      expect(groups).to eq [group1, group2]
    end
  end


end
