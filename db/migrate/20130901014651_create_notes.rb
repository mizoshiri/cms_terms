class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :content, :null => true, :default => nil
      t.text :content, :null => true, :default => nil

      t.timestamps
    end
  end
end
