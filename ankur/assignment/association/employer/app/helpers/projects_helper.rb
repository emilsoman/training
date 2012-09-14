module ProjectsHelper

	def join_employees(project)
    project.employees.map { |p| p.name }.join(", ")
  end

end
