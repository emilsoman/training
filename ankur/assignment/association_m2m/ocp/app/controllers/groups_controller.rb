class GroupsController < ApplicationController
	
  def index
  	@groups = Group.all
  	@users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: {  groups: @groups, users: @users } }
    end
  end

  def new
  	@group = Group.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @group }
    end
  end

  def create
  	@group = Group.new(params[:group])

    respond_to do |format|
      if @group.save
        format.html { redirect_to @group, notice: 'Group was successfully created.' }
        format.json { render json: @group, status: :created, location: @group }
      else
        format.html { render action: "new" }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  	@group = Group.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @group }
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
