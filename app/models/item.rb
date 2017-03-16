class Item < ApplicationRecord
  belongs_to :group

  has_attached_file :image, styles: { large: "800x600>", thumb: "300x200>", mini: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
