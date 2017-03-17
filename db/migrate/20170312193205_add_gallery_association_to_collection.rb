class AddGalleryAssociationToCollection < ActiveRecord::Migration[5.0]
  def change
    add_reference :collections, :gallery, foreign_key: true
  end
end
