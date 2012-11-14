class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.references :list
      t.string :title
      t.text :description
      t.references :template
      t.references :location
      t.integer :parent_id
      t.timestamps
    end
    add_index :list_items, :list_id
    add_index :list_items, :template_id
  end
end
