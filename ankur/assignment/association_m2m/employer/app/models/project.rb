class Project < ActiveRecord::Base

  attr_accessible :name, :description, :estimated_cost, :start_date, :end_date

  validates :name, presence: true, length: { minimum: 5, maximum: 64 }, uniqueness: true
	validates :description, length: { minimum: 10, maximum: 256 }
	validates :estimated_cost, numericality: true, length: { :in => 4..6 }

	has_many :employee_projects, dependent: :delete_all
  has_many :employees, through: :employee_projects

end
