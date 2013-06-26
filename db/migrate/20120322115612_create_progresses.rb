class CreateProgresses < ActiveRecord::Migration
  def change
    create_table :progresses do |t|
      t.references :list
      t.references :user
      t.text :complete

      t.timestamps
    end
    add_index :progresses, :list_id
    add_index :progresses, :user_id
  end
end
