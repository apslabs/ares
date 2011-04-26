require 'test_helper'

class FacturaitemsControllerTest < ActionController::TestCase
  setup do
    @facturaitem = facturaitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:facturaitems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create facturaitem" do
    assert_difference('Facturaitem.count') do
      post :create, :facturaitem => @facturaitem.attributes
    end

    assert_redirected_to facturaitem_path(assigns(:facturaitem))
  end

  test "should show facturaitem" do
    get :show, :id => @facturaitem.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @facturaitem.to_param
    assert_response :success
  end

  test "should update facturaitem" do
    put :update, :id => @facturaitem.to_param, :facturaitem => @facturaitem.attributes
    assert_redirected_to facturaitem_path(assigns(:facturaitem))
  end

  test "should destroy facturaitem" do
    assert_difference('Facturaitem.count', -1) do
      delete :destroy, :id => @facturaitem.to_param
    end

    assert_redirected_to facturaitems_path
  end
end
