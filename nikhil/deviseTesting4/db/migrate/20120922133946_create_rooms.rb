class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :size
      t.string :purpose
      t.string :logo
      t.integer :organization_id
      t.integer :user_id
      t.timestamps
    end
  end
end
