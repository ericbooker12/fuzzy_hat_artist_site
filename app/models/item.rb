  class Item < ApplicationRecord
  belongs_to :collection

  has_attached_file :image,
            styles: { large: "1140x600", medium: "800x600>", thumb: "200x200#" },
            default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
