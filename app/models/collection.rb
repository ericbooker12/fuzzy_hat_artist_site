class Collection < ApplicationRecord
  belongs_to :gallery
  has_many :items, dependent: :restrict_with_error
	validates :name, presence: true, uniqueness: true
	validates :thumbnail, presence: true, numericality: { only_integer: true }
	# validates :name, uniqueness: true

  def self.active
    Collection.where(archive: false)
  end

end
