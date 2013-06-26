class CreateExternalLinks < ActiveRecord::Migration
  def change
    create_table :external_links do |t|
      t.string :href
      t.string :name
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
