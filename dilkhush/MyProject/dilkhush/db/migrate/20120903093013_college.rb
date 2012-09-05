class College < ActiveRecord::Migration
  def up
	add_column :pincode, :integer 
  end

  def down
  end
end
