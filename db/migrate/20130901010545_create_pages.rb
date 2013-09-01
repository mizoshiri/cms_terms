class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :type_id, :default => 1, :null => false
      t.text :title, :null => false
      t.text :content, :null => true, :default => nil
      t.boolean :status, :null => false, :default => true

      t.timestamps
    end
  end
end
