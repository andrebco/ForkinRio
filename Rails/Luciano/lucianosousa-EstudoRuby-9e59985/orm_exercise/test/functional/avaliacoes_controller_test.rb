require 'test_helper'

class AvaliacoesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:avaliacoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create avaliacao" do
    assert_difference('Avaliacao.count') do
      post :create, :avaliacao => { }
    end

    assert_redirected_to avaliacao_path(assigns(:avaliacao))
  end

  test "should show avaliacao" do
    get :show, :id => avaliacoes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => avaliacoes(:one).to_param
    assert_response :success
  end

  test "should update avaliacao" do
    put :update, :id => avaliacoes(:one).to_param, :avaliacao => { }
    assert_redirected_to avaliacao_path(assigns(:avaliacao))
  end

  test "should destroy avaliacao" do
    assert_difference('Avaliacao.count', -1) do
      delete :destroy, :id => avaliacoes(:one).to_param
    end

    assert_redirected_to avaliacoes_path
  end
end
