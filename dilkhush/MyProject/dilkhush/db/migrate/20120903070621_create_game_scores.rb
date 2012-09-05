class CreateGameScores < ActiveRecord::Migration
  def change
    create_table :game_scores do |t|
      t.integer :game_no
      t.string :name_name
      t.integer :player
      t.timestamps
    end
  end
end
