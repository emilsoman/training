class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|

    	t.string :name, null: false, limit: 64
      t.integer :age, null: false, limit: 3
      t.string :contact_no, limit: 11
      t.string :email, null: false, limit: 64

      t.references :designation, null: false

      t.timestamps
    end

    add_index :employees, :name
    add_index :employees, :email
    add_index :employees, [:name, :email], unique: true, order: { name: :asc, email: :asc }

    add_foreign_key :employees, :designations
    
  end
end
