class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :created_by
      t.string :image
      t.string :name
      t.text :description
      t.string :type          #icon/avatar/map/etc.
      t.timestamps
    end
  end
end
