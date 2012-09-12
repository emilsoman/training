class RenameAccountType < ActiveRecord::Migration
  def up
	rename_column :accounts, :type, :descp
  end

  def down
	rename_column :accounts, :descp, :type
  end
end
