class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.text :name
      t.text :description
      t.integer :type

      t.timestamps
    end
  end
end
