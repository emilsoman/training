class AddOrgainzationIdToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :orgainzation_id, :integer
  end
end
