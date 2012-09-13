class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.integer :phone
      t.text :address
      t.string :city
      t.string :state
      t.integer :pincode
    end
  end
end
