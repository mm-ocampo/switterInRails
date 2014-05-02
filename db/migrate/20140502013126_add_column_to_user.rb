class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :encryptedPassword, :string
    add_column :users, :salt, :string
  end
end
