require 'test_helper'

class QuestoesControllerTest < ActionController::TestCase
  setup do
    @questao = questoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create questao" do
    assert_difference('Questao.count') do
      post :create, :questao => @questao.attributes
    end

    assert_redirected_to questao_path(assigns(:questao))
  end

  test "should show questao" do
    get :show, :id => @questao.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @questao.to_param
    assert_response :success
  end

  test "should update questao" do
    put :update, :id => @questao.to_param, :questao => @questao.attributes
    assert_redirected_to questao_path(assigns(:questao))
  end

  test "should destroy questao" do
    assert_difference('Questao.count', -1) do
      delete :destroy, :id => @questao.to_param
    end

    assert_redirected_to questoes_path
  end
end
