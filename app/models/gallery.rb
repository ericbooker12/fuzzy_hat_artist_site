class Gallery < ApplicationRecord
  has_many :collections
  belongs_to :user
  validates :name, presence: true
  validates :name, uniqueness: true

  def self.active
  	Gallery.where(archive: false)
  end

  def self.archived
    Gallery.where(archive: true)
  end

end
