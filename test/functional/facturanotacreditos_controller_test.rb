require 'test_helper'

class FacturanotacreditosControllerTest < ActionController::TestCase
  setup do
    @facturanotacredito = facturanotacreditos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:facturanotacreditos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create facturanotacredito" do
    assert_difference('Facturanotacredito.count') do
      post :create, :facturanotacredito => @facturanotacredito.attributes
    end

    assert_redirected_to facturanotacredito_path(assigns(:facturanotacredito))
  end

  test "should show facturanotacredito" do
    get :show, :id => @facturanotacredito.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @facturanotacredito.to_param
    assert_response :success
  end

  test "should update facturanotacredito" do
    put :update, :id => @facturanotacredito.to_param, :facturanotacredito => @facturanotacredito.attributes
    assert_redirected_to facturanotacredito_path(assigns(:facturanotacredito))
  end

  test "should destroy facturanotacredito" do
    assert_difference('Facturanotacredito.count', -1) do
      delete :destroy, :id => @facturanotacredito.to_param
    end

    assert_redirected_to facturanotacreditos_path
  end
end
