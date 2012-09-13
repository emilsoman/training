class Product < ActiveRecord::Base
	attr_accessible :name, :price, :description, :brand

	validates :name, :price, :brand, :presence => true
	validates :price, :numericality => true
	validates :name, :uniqueness => true

	has_many :user_products, :dependent => :destroy
	has_many :users, :through => :user_products
end
