class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.string :image
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
