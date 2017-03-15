class AddDefaultValueToArchiveInGallery < ActiveRecord::Migration[5.0]
  def change
    change_column :galleries, :archive, :boolean, :default => false
  end
end
