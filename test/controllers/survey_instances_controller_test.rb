require 'test_helper'

class SurveyInstancesControllerTest < ActionController::TestCase
  setup do
    @survey_instance = survey_instances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:survey_instances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey_instance" do
    assert_difference('SurveyInstance.count') do
      post :create, survey_instance: { patient_id: @survey_instance.patient_id, survey_id: @survey_instance.survey_id }
    end

    assert_redirected_to survey_instance_path(assigns(:survey_instance))
  end

  test "should show survey_instance" do
    get :show, id: @survey_instance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey_instance
    assert_response :success
  end

  test "should update survey_instance" do
    patch :update, id: @survey_instance, survey_instance: { patient_id: @survey_instance.patient_id, survey_id: @survey_instance.survey_id }
    assert_redirected_to survey_instance_path(assigns(:survey_instance))
  end

  test "should destroy survey_instance" do
    assert_difference('SurveyInstance.count', -1) do
      delete :destroy, id: @survey_instance
    end

    assert_redirected_to survey_instances_path
  end
end
