class User < ActiveRecord::Base

  attr_accessible :name, :dob, :age, :gender, :contact_no, :email

  validates :name, :age, :gender, :email, presence: true
  validates :name, length: { minimum: 3, maximum: 64 }
  validates :age, numericality: true, length: { :in =>  2..3 }
  validates	:gender, length: { :in => 4..6 }
  validates :contact_no, length: { :in => 10..11 }
  validates :email, length: { minimum: 5, maximum: 64 }, uniqueness: true

end
