class PeopleController < ApplicationController
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end
#  def index
#
#    @users = User.all
#    respond_to do |format|
#      format.html # index.html.erb
#      format.json { render json: {  user: @users } }
#    end
#  end


   def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end



  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    @user.organization_id=current_user.organization_id;
    @user.role='Employee'
    respond_to do |format|
      if @user.save
        format.html { redirect_to people_show_path(@user) , notice: 'User was successfully created.' }
        format.json { render json: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to  people_show_path(@user), notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

end
