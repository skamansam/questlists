class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.text :coordinates
      t.references :map
      t.references :list_item

      t.timestamps
    end
    add_index :locations, :map_id
    add_index :locations, :list_item_id
  end
end
