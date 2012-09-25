class AddColumnUpvoteDownvoteAnswers < ActiveRecord::Migration
  def up
		add_column :answers, :upvote, :integer
		add_column :answers, :downvote, :integer
  end

  def down
		remove_column :answers, :upvote, :integer
		remove_column :answers, :downvote, :integer
  end
end
