class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :to_user
      t.string :username
      t.string :swit
      t.integer :sweet_count
      t.integer :sour_count

      t.timestamps
    end
  end
end
