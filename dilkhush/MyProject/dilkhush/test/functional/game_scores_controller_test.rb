require 'test_helper'

class GameScoresControllerTest < ActionController::TestCase
  setup do
    @game_score = game_scores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_scores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_score" do
    assert_difference('GameScore.count') do
      post :create, game_score: { game_no: @game_score.game_no, name_name: @game_score.name_name, player: @game_score.player }
    end

    assert_redirected_to game_score_path(assigns(:game_score))
  end

  test "should show game_score" do
    get :show, id: @game_score
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game_score
    assert_response :success
  end

  test "should update game_score" do
    put :update, id: @game_score, game_score: { game_no: @game_score.game_no, name_name: @game_score.name_name, player: @game_score.player }
    assert_redirected_to game_score_path(assigns(:game_score))
  end

  test "should destroy game_score" do
    assert_difference('GameScore.count', -1) do
      delete :destroy, id: @game_score
    end

    assert_redirected_to game_scores_path
  end
end
