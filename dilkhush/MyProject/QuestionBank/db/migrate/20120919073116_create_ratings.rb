class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
			t.integer :like
			t.integer :dislike
      t.timestamps
    end
  end
end
