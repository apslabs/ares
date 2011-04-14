require 'test_helper'

class NotacreditosControllerTest < ActionController::TestCase
  setup do
    @notacredito = notacreditos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notacreditos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notacredito" do
    assert_difference('Notacredito.count') do
      post :create, :notacredito => @notacredito.attributes
    end

    assert_redirected_to notacredito_path(assigns(:notacredito))
  end

  test "should show notacredito" do
    get :show, :id => @notacredito.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @notacredito.to_param
    assert_response :success
  end

  test "should update notacredito" do
    put :update, :id => @notacredito.to_param, :notacredito => @notacredito.attributes
    assert_redirected_to notacredito_path(assigns(:notacredito))
  end

  test "should destroy notacredito" do
    assert_difference('Notacredito.count', -1) do
      delete :destroy, :id => @notacredito.to_param
    end

    assert_redirected_to notacreditos_path
  end
end
