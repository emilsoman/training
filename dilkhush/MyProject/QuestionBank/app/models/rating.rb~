class Rating < ActiveRecord::Base
	attr_accessible :like, :dislike
	validates :like, :dislike, :numericality => true

	belongs_to :answer

end
