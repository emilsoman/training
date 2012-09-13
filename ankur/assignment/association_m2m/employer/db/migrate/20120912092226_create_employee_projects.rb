class CreateEmployeeProjects < ActiveRecord::Migration
  def change
    create_table :employee_projects do |t|

    	t.references :employee, :project, null: false

      t.timestamps
    end

    add_index :employee_projects, [:employee_id, :project_id]
    add_foreign_key :employee_projects, :employees
    add_foreign_key :employee_projects, :projects
    
  end
end
