class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.integer :id
      t.string :name
      t.string :address
      t.timestamps
    end
  end
end
