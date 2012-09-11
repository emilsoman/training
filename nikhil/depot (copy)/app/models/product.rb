class Product < ActiveRecord::Base
  	attr_accessible :title, :description, :image_url, :price
	validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
	validates :title, :uniqueness => true
	validates :title, :description, :image_url, :presence => true
	validates :image_url, :format => {:with=> %r{\.(gif|jpg|png)$}i, :message => 'must be a URL for GIF, JPG or PNG image.'}


end