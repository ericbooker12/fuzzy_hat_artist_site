class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :title
      t.integer :length
      t.integer :width
      t.integer :height
      t.references :collection, foreign_key: true

      t.timestamps
    end
  end
end
