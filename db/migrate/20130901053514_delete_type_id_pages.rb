class DeleteTypeIdPages < ActiveRecord::Migration
  def change
    remove_column :pages, :type_id
  end
end
