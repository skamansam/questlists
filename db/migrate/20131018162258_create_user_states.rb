class CreateUserStates < ActiveRecord::Migration
  def change
    create_table :user_states do |t|
      t.string  :state_for_type
      t.integer :state_for_id
      t.integer :user_id
      t.integer :progress_percent
      t.string  :progress_string
      t.timestamps
    end
  end
end
