class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :oldpassword, :string
    add_column :users, :newpassword, :string
    add_column :users, :newpassword_confirmation, :string
  end
end
