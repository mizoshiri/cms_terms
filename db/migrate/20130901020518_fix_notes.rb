class FixNotes < ActiveRecord::Migration
  def change
    add_column :notes, :title, :text, :null => false, :default => nil
  end
end
