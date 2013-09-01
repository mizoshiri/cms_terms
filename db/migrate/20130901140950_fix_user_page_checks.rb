class FixUserPageChecks < ActiveRecord::Migration
  def change
    drop_table :user_page_checks
    create_table :user_page_checks do |t|
      t.integer :user_id, :null => false
      t.integer :page_id, :null => false
      t.timestamps
    end
  end
end
