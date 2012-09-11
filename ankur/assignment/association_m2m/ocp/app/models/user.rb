class User < ActiveRecord::Base

  attr_accessible :age, :email, :name ,  :groups

  validates :name, :age, :email,	presence: true

  has_and_belongs_to_many :groups

end
