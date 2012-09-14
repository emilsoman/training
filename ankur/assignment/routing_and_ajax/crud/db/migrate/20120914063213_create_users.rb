class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

    	t.string :name, null: false, limit: 64
    	t.date :dob
      t.integer :age, null: false
      t.string :gender, null: false, limit: 6
      t.string :contact_no, limit: 11
      t.string :email, null: false, limit: 64

      t.timestamps
    end

    add_index :users, :name
    add_index :users, :email
    add_index :users, [:name, :email], unique: true, order: { name: :asc, email: :asc }
    
  end
end
