class AddDefaultValueToArchiveInCollection < ActiveRecord::Migration[5.0]
  def change
    change_column :collections, :archive, :boolean, :default => false
  end
end
