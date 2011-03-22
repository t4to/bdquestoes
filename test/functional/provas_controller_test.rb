require 'test_helper'

class ProvasControllerTest < ActionController::TestCase
  setup do
    @prova = provas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:provas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prova" do
    assert_difference('Prova.count') do
      post :create, :prova => @prova.attributes
    end

    assert_redirected_to prova_path(assigns(:prova))
  end

  test "should show prova" do
    get :show, :id => @prova.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @prova.to_param
    assert_response :success
  end

  test "should update prova" do
    put :update, :id => @prova.to_param, :prova => @prova.attributes
    assert_redirected_to prova_path(assigns(:prova))
  end

  test "should destroy prova" do
    assert_difference('Prova.count', -1) do
      delete :destroy, :id => @prova.to_param
    end

    assert_redirected_to provas_path
  end
end
