class Comment < ActiveRecord::Base
	attr_accessible :comment_body
	validates :comment_body, :presence => true

	belongs_to :user
	belongs_to :question

end
