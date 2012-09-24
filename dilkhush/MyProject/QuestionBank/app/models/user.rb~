class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :phone, :remember_me

	validates :first_name, :presence => true
	validates_uniqueness_of :email, :case_sensitive => false

	has_many :comments, :dependent => :destroy
	has_many :questions, :dependent => :destroy
	has_many :answers, :dependent => :destroy
end
