class CreateSweets < ActiveRecord::Migration
  def change
    create_table :sweets do |t|
      t.integer :swit_id
      t.string :username

      t.timestamps
    end
  end
end
