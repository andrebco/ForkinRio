require 'test_helper'

class RecursosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recursos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recurso" do
    assert_difference('Recurso.count') do
      post :create, :recurso => { }
    end

    assert_redirected_to recurso_path(assigns(:recurso))
  end

  test "should show recurso" do
    get :show, :id => recursos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => recursos(:one).to_param
    assert_response :success
  end

  test "should update recurso" do
    put :update, :id => recursos(:one).to_param, :recurso => { }
    assert_redirected_to recurso_path(assigns(:recurso))
  end

  test "should destroy recurso" do
    assert_difference('Recurso.count', -1) do
      delete :destroy, :id => recursos(:one).to_param
    end

    assert_redirected_to recursos_path
  end
end
