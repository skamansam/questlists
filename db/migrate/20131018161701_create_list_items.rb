class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.string  :name
      t.text    :description
      t.string  :icon
      t.integer :created_by
      t.integer :list_id
      t.timestamps
    end
  end
end
