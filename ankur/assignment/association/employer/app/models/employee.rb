class Employee < ActiveRecord::Base

  attr_accessible :name, :age, :contact_no, :email

  validates :name, :age, :email, presence: true
  validates :age, numericality: true
  validates :name, length: { minimum: 3, maximum: 64 }
  validates :age, length: { :in =>  2..3 }
  validates :contact_no, length: { :in => 10..11 }
  validates :email, length: { minimum: 5, maximum: 64 }, uniqueness: true

  belongs_to :designation
  validates :designation, presence: true

  has_many :employee_projects, dependent: :delete_all
  has_many :projects, through: :employee_projects

end
