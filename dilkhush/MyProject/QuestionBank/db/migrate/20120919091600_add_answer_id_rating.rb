class AddAnswerIdRating < ActiveRecord::Migration
  def up
		add_column :ratings, :answer_id, :integer
  end

  def down
		remove_column :ratings, :answer_id, :integer
  end
end
