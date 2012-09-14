class Book < ActiveRecord::Base
  attr_accessible :category, :title
validates :title, :category, :presence => true
	has_many :authors
   has_many :writers, :through => :authors
end
