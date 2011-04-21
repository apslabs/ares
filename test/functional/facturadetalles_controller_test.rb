require 'test_helper'

class FacturadetallesControllerTest < ActionController::TestCase
  setup do
    @facturadetalle = facturadetalles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:facturadetalles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create facturadetalle" do
    assert_difference('Facturadetalle.count') do
      post :create, :facturadetalle => @facturadetalle.attributes
    end

    assert_redirected_to facturadetalle_path(assigns(:facturadetalle))
  end

  test "should show facturadetalle" do
    get :show, :id => @facturadetalle.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @facturadetalle.to_param
    assert_response :success
  end

  test "should update facturadetalle" do
    put :update, :id => @facturadetalle.to_param, :facturadetalle => @facturadetalle.attributes
    assert_redirected_to facturadetalle_path(assigns(:facturadetalle))
  end

  test "should destroy facturadetalle" do
    assert_difference('Facturadetalle.count', -1) do
      delete :destroy, :id => @facturadetalle.to_param
    end

    assert_redirected_to facturadetalles_path
  end
end
