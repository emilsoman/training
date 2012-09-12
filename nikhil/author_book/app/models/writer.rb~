class Writer < ActiveRecord::Base
  attr_accessible :location, :name
validates :name, :location, :presence => true
  has_many :authors
  has_many :books, :through => :authors
end
