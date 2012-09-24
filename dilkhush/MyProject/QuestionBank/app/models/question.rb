class Question < ActiveRecord::Base
	attr_accessible :title, :question_body, :image
	validates :title, :question_body, :presence => true
	validates :title, :length => { :maximum => 16 }

	has_attached_file :image,
                    :styles => {
                      :thumb => "75x75>",
                      :small => "500x500>"
                    }
	belongs_to :user
	has_many :comments, :dependent => :destroy
	has_many :answers, :dependent => :destroy
end
