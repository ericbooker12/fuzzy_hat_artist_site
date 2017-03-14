class AddGalleryAssociationToGroup < ActiveRecord::Migration[5.0]
  def change
    add_reference :groups, :gallery, foreign_key: true
  end
end
