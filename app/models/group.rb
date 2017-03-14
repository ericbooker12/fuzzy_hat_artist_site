class Group < ApplicationRecord
  belongs_to :gallery
	validates :name, presence: true
	validates :thumbnail, presence: true
	validates :name, uniqueness: true

  def self.active
    Group.where(archive: false)
  end

end
