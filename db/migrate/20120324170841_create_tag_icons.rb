class CreateTagIcons < ActiveRecord::Migration
  def change
    create_table :tag_icons do |t|
      t.string :tag
      t.string :icon

      t.timestamps
    end
  end
end
