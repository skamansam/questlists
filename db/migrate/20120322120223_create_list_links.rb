class CreateListLinks < ActiveRecord::Migration
  def change
    create_table :list_links do |t|
      t.references :list
      t.references :external_link

      t.timestamps
    end
    add_index :list_links, :list_id
    add_index :list_links, :external_link_id
  end
end
