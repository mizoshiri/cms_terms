class FixAdminUsers < ActiveRecord::Migration
  def change
    remove_column :users, :status
    add_column :users, :admin, :boolean, :null => false, :default => false
  end
end
