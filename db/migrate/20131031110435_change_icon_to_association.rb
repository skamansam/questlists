class ChangeIconToAssociation < ActiveRecord::Migration
  def change
    rename_column :lists,:icon,:icon_id
    rename_column :list_items,:icon,:icon_id
  end
end
