class Answer < ActiveRecord::Base
	after_initialize :default_values
	attr_accessible :answer_body, :mark
	validates :answer_body, :presence => true
	validates :mark, :inclusion => {:in => [true, false]}

	private
	def default_values
		self.mark ||= false
	end


	belongs_to :user
	belongs_to :question
	has_one :rating, :dependent => :destroy

end
