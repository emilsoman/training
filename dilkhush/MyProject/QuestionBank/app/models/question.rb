class Question < ActiveRecord::Base
	attr_accessible :title, :question_body, :image
	validates :title, :question_body, :presence => true
	validates :title, :length => { :maximum => 16 }

	belongs_to :user
	has_many :comments, :dependent => :destroy
	has_many :answers, :dependent => :destroy
end
