class Gallery < ApplicationRecord
  has_many :collections
  validates :name, presence: true
  validates :name, uniqueness: true

  def self.active
  	Gallery.where(archive: false)
  end

end
