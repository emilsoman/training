class EmployeesController < ApplicationController

  def index
    @employees = Employee.find(:all, :order => :name)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @employees }
    end
  end

  def new
    @employee = Employee.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @employee }
    end
  end

  def create
    @employee = Employee.new(params[:employee])

    if params[:designation][:id] != ""
      designation = Designation.find(params[:designation][:id])
    
      @employee.designation = designation
    end

    if params[:project_list].present? && params[:project_list].size > 0
      params[:project_list].each do |project_id|
        @employee.projects << Project.find(project_id)
      end
    end
    
    respond_to do |format|
      if @employee.save
        format.html { redirect_to @employee, notice: 'Employee was successfully created.' }
        format.json { render json: @employee, status: :created, location: @employee }
      else
        format.html { render action: "new" }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @employee = Employee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @employee }
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])

    designation = Designation.find(params[:designation][:id])
    
    @employee.designation = designation

    @employee.projects = []
    if params[:project_list].present? && params[:project_list].size > 0
      params[:project_list].each do |project_id|
        @employee.projects << Project.find(project_id)
      end
    end

    respond_to do |format|
      if @employee.update_attributes(params[:employee])
        format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy

    respond_to do |format|
      format.html { redirect_to employees_url }
      format.js { render :nothing => true }
    end
  end
end
