require File.dirname(__FILE__) + '/../spec_helper'

describe UsersController, "new with a valid user" do
  before(:each) do
    User.stub!(:new).and_return(@user = mock_model(User, :save=>true))
  end

  def do_create
    post :create, :user=>{:name=>"value"}
  end

  it "should create the user" do
    User.should_receive(:new).with("name"=>"value").and_return(@user)
    do_create
  end

  it "should save the user" do
    @user.should_receive(:save).and_return(true)
    do_create
  end

  it "should be redirect" do
    do_create
    response.should be_redirect
  end

  it "should assign user" do
    do_create
    assigns(:user).should == @user
  end

  it "should redirect to the index path" do
    do_create
    response.should redirect_to(users_url)
  end
end

describe UsersController, "new with an invalid user" do
  before(:each) do
    User.stub!(:new).and_return(@user = mock_model(User, :save=>false))
  end
  def do_create
    post :create, :user=>{:name=>"value"}
  end

  it "should create the user" do
    User.should_receive(:new).with("name"=>"value").and_return(@user)
    do_create
  end

  it "should save the user" do
    @user.should_receive(:save).and_return(false)
    do_create
  end

  it "should be success" do
    do_create
    response.should be_success
  end

  it "should assign user" do
    do_create
    assigns(:user).should == @user
  end

  it "should re-render the new form" do
    do_create
    response.should render_template("new")
  end
end