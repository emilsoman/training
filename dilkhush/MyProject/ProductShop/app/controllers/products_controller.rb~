class ProductsController < ApplicationController
  # GET /products
  # GET /products.json
  def index
    @products = Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @product = Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
#    @user = User.find(params[:name])

    active_user_ids = params[:active_user].collect {|id| id.to_i} if params[:active_user]
    user_ids = params[:user_list].collect {|id| id.to_i} if params[:user_list]

    if active_user_ids
      user_ids.each do |id|
        user = User.find(id)
        @prodcuct.users << user
      end
    end

#    @product = Product.create(params[:product])
#    @product.users << @user

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render json: @product, status: :created, location: @product }
      else
        format.html { render action: "new" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
#    @user = User.find(params[:name])

    active_user_ids = params[:active_user].collect {|id| id.to_i} if params[:active_user]
    user_ids = params[:user_list].collect {|id| id.to_i} if params[:user_list]

    @product = Product.find(params[:id])
    @product.users = []

#    @product.users << @user

    if active_user_ids
      user_ids.each do |id|
        user = User.find(id)
        @product.users << user
      end
    end 

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end
end
