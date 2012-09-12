class Account < ActiveRecord::Base
  attr_accessible :amount, :descp

has_many :accountings, :dependent => :destroy
has_many :users, :through => :accountings

end
