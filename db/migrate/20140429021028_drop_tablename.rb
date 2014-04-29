class DropTablename < ActiveRecord::Migration
  def up
    drop_table :comments
  end
end
