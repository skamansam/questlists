class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.references :template
      t.text :info
      t.integer :parent_id
      t.integer :link_list_id

      t.timestamps
    end
    add_index :lists, :template_id
  end
end
