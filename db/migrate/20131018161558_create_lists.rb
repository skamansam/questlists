class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string  :name
      t.text    :description
      t.string  :icon
      t.integer :created_by
      t.integer :list_item
      t.timestamps
    end
  end
end
