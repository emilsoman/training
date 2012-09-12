class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.integer :writer_id
      t.integer :book_id
      t.timestamps
    end
  end
end
