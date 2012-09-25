class OrgainzationsController < ApplicationController
  # GET /orgainzations
  # GET /orgainzations.json
  def index
    @orgainzations = Orgainzation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orgainzations }
    end
  end

  # GET /orgainzations/1
  # GET /orgainzations/1.json
  def show
    @orgainzation = Orgainzation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @orgainzation }
    end
  end

  # GET /orgainzations/new
  # GET /orgainzations/new.json
  def new
    @orgainzation = Orgainzation.new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: { organisation: @orgainzation, user: @user } }
    end
  end

  # GET /orgainzations/1/edit
  def edit
    @orgainzation = Orgainzation.find(params[:id])
  end

  # POST /orgainzations
  # POST /orgainzations.json
  def create

    @orgainzation = Orgainzation.new(params[:orgainzation])
    user=User.new(params[:user])
    user.role='Admin'
    
     respond_to do |format|
      
      if @orgainzation.save
        user.organization_id = @orgainzation.id
        if user.save
          format.html { redirect_to @orgainzation, notice: 'Orgainzation was successfully created.' }
          format.json { render json: @orgainzation, status: :created, location: @orgainzation }
        end
      else
        format.html { render action: "new" }
        format.json { render json: @orgainzation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orgainzations/1
  # PUT /orgainzations/1.json
  def update
    @orgainzation = Orgainzation.find(params[:id])

    respond_to do |format|
      if @orgainzation.update_attributes(params[:orgainzation])
        format.html { redirect_to @orgainzation, notice: 'Orgainzation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @orgainzation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orgainzations/1
  # DELETE /orgainzations/1.json
  def destroy
    @orgainzation = Orgainzation.find(params[:id])
    puts "--------------------------------------------"
    puts (@orgainzation.name)
    @orgainzation.destroy

    respond_to do |format|
      format.html { redirect_to orgainzations_url }
      format.json { head :no_content }
    end
  end
end
