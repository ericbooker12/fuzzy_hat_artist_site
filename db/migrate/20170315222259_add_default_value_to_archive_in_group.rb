class AddDefaultValueToArchiveInGroup < ActiveRecord::Migration[5.0]
  def change
    change_column :groups, :archive, :boolean, :default => false
  end
end
