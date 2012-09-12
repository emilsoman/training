class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :type
      t.decimal :amount, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
