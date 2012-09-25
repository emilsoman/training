require 'test_helper'

class OrgainzationsControllerTest < ActionController::TestCase
  setup do
    @orgainzation = orgainzations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orgainzations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orgainzation" do
    assert_difference('Orgainzation.count') do
      post :create, orgainzation: { address: @orgainzation.address, name: @orgainzation.name }
    end

    assert_redirected_to orgainzation_path(assigns(:orgainzation))
  end

  test "should show orgainzation" do
    get :show, id: @orgainzation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orgainzation
    assert_response :success
  end

  test "should update orgainzation" do
    put :update, id: @orgainzation, orgainzation: { address: @orgainzation.address, name: @orgainzation.name }
    assert_redirected_to orgainzation_path(assigns(:orgainzation))
  end

  test "should destroy orgainzation" do
    assert_difference('Orgainzation.count', -1) do
      delete :destroy, id: @orgainzation
    end

    assert_redirected_to orgainzations_path
  end
end
