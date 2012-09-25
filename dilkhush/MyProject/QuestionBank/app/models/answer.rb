class Answer < ActiveRecord::Base
	after_initialize :default_values
	attr_accessible :answer_body, :mark, :upvote, :downvote
	validates :answer_body, :presence => true
	validates :mark, :inclusion => {:in => [true, false]}

	private
	def default_values
		self.mark ||= false
		self.upvote ||= 0
		self.downvote ||= 0
	end


	belongs_to :user
	belongs_to :question
end
