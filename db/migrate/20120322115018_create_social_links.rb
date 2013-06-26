class CreateSocialLinks < ActiveRecord::Migration
  def change
    create_table :social_links do |t|
      t.references :user
      t.string :service_name
      t.string :identifier

      t.timestamps
    end
    add_index :social_links, :user_id
  end
end
