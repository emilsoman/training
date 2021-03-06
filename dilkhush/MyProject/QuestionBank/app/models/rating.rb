class Rating < ActiveRecord::Base
	after_initialize :default_value
	attr_accessible :like, :dislike
	validates :like, :dislike, :numericality => true

	private
	def default_values
		self.like ||= 0
		self.dislike ||= 0
	end

	belongs_to :answer

end
