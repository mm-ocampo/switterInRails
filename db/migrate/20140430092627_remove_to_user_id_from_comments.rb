class RemoveToUserIdFromComments < ActiveRecord::Migration
  def change
    remove_column :comments, :to_user_id, :integer
  end
end
