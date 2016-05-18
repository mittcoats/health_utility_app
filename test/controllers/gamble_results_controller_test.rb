require 'test_helper'

class GambleResultsControllerTest < ActionController::TestCase
  setup do
    @gamble_result = gamble_results(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gamble_results)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gamble_result" do
    assert_difference('GambleResult.count') do
      post :create, gamble_result: { final_good_outcome_percent: @gamble_result.final_good_outcome_percent }
    end

    assert_redirected_to gamble_result_path(assigns(:gamble_result))
  end

  test "should show gamble_result" do
    get :show, id: @gamble_result
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gamble_result
    assert_response :success
  end

  test "should update gamble_result" do
    patch :update, id: @gamble_result, gamble_result: { final_good_outcome_percent: @gamble_result.final_good_outcome_percent }
    assert_redirected_to gamble_result_path(assigns(:gamble_result))
  end

  test "should destroy gamble_result" do
    assert_difference('GambleResult.count', -1) do
      delete :destroy, id: @gamble_result
    end

    assert_redirected_to gamble_results_path
  end
end
