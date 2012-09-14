class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|

    	t.string :name, null: false, limit: 64
    	t.text :description, limit: 256
    	t.integer :estimated_cost, limit: 6
    	t.timestamp :start_date
    	t.timestamp :end_date

      t.timestamps
    end

    add_index :projects, :name
    add_index :projects, :start_date
    add_index :projects, :end_date
    add_index :projects, [:start_date, :end_date]
    
  end
end
