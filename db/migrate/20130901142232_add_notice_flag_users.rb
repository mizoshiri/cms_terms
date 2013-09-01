class AddNoticeFlagUsers < ActiveRecord::Migration
  def change
    add_column :users, :notice_flag, :boolean, :null => false, :default => false
  end
end
