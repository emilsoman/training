class CreateAccountings < ActiveRecord::Migration
  def change
    create_table :accountings do |t|
      t.integer :user_id
      t.integer :account_id

      t.timestamps
    end
  end
end
