class CreateDesignations < ActiveRecord::Migration
  def change
    create_table :designations do |t|

    	t.string :name, null: false, limit: 64

      t.timestamps
    end

    add_index :designations, :name
    
  end
end
