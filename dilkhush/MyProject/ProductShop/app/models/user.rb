class User < ActiveRecord::Base
	attr_accessible :name, :age, :email, :phone, :address, :city, :state, :pincode

	validates :name, :age, :email, :phone, :address, :city, :state, :presence => true
	validates :name, :length => { :minimum => 5 }
	validates :age, :length => { :in => 1..3 }
	validates :email, :length => { :minimum => 10 }
	validates :phone, :length => { :is => 10 }
	validates :pincode, :length => { :is => 6 }
	validates :phone, :age, :pincode, :numericality => true
	validates :phone, :name, :email, :uniqueness => true
	
	has_many :user_products, :dependent => :destroy
	has_many :products, :through => :user_products
end
