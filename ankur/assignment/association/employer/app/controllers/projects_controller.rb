class ProjectsController < ApplicationController
  
  def index
    @projects = Project.find(:all, :order => :start_date)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }
    end
  end

  def new
    @project = Project.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project }
    end
  end

  def create
    @project = Project.new(params[:project])

    if params[:employee_list].present? && params[:employee_list].size > 0
      params[:employee_list].each do |employee_id|
        @project.employees << Employee.find(employee_id)
      end
    end

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render json: @project, status: :created, location: @project }
      else
        format.html { render action: "new" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @project = Project.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project }
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    
    @project.employees = []
    if params[:employee_list].present? && params[:employee_list].size > 0
      params[:employee_list].each do |employee_id|
        @project.employees << Employee.find(employee_id)
      end
    end

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.html { redirect_to projects_url }
      format.js { render :nothing => true }
    end
  end
end
