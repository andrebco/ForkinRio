require 'test_helper'

class AssessoresControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assessores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assessor" do
    assert_difference('Assessor.count') do
      post :create, :assessor => { }
    end

    assert_redirected_to assessor_path(assigns(:assessor))
  end

  test "should show assessor" do
    get :show, :id => assessores(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => assessores(:one).to_param
    assert_response :success
  end

  test "should update assessor" do
    put :update, :id => assessores(:one).to_param, :assessor => { }
    assert_redirected_to assessor_path(assigns(:assessor))
  end

  test "should destroy assessor" do
    assert_difference('Assessor.count', -1) do
      delete :destroy, :id => assessores(:one).to_param
    end

    assert_redirected_to assessores_path
  end
end
