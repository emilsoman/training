class User < ActiveRecord::Base
  attr_accessible :name
	has_many :accountings, :dependent => :destroy
has_many :accounts, :through => :accountings

end
