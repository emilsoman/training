class CreateOrgainzations < ActiveRecord::Migration
  def change
    create_table :orgainzations do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
