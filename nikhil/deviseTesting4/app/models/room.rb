class Room < ActiveRecord::Base
  attr_accessible :logo, :name, :purpose, :size, :avatar
  belongs_to :orgainzation
  has_one :user
  has_attached_file :avatar,
    :styles => {:thumb => '100x200>', :large => '640x480>' },
    :default_style => :thumb,
    :url => "/system/:class/:attachment/:id/:style/:basename.:extension",
    :path => ":rails_root/public/system/:class/:attachment/:id/:style/:basename.:extension"
  #                    :storage => :database,
  #                    :styles => { :thumb => "75x75>" },
  #                    :url => '/:class/:id/:attachment?style=:style'
end
