class Orgainzation < ActiveRecord::Base
  attr_accessible :address, :name
  has_many :users, :class_name => "User", :foreign_key => "id"
  has_many :rooms, :class_name => "Room", :foreign_key => "id"
end
