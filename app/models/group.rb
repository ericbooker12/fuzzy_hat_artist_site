class Group < ApplicationRecord
  belongs_to :gallery
  has_many :items
	validates :name, presence: true
	validates :thumbnail, presence: true
	validates :name, uniqueness: true

  accepts_nested_attributes_for :items   # ???

  def self.active
    Group.where(archive: false)
  end

end
