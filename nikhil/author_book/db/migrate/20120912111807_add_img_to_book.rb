class AddImgToBook < ActiveRecord::Migration
  def change
    add_column :books, :img, :string
  end

  def self.down
    remove_column :books, :img
  end
end
