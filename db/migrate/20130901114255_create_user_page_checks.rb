class CreateUserPageChecks < ActiveRecord::Migration
  def change
    create_table :user_page_checks do |t|
      t.integer :user_id, :integer, :null => false
      t.integer :page_id, :integer, :null => false

      t.timestamps
    end
  end
end
