class Gallery < ApplicationRecord
  has_many :groups
  validates :name, presence: true
  validates :name, uniqueness: true

  def self.active
  	Gallery.where(archive: false)
  end

end
