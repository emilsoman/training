module EmployeesHelper

	def join_projects(employee)
    employee.projects.map { |p| p.name }.join(", ")
  end

end
