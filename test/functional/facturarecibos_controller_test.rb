require 'test_helper'

class FacturarecibosControllerTest < ActionController::TestCase
  setup do
    @facturarecibo = facturarecibos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:facturarecibos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create facturarecibo" do
    assert_difference('Facturarecibo.count') do
      post :create, :facturarecibo => @facturarecibo.attributes
    end

    assert_redirected_to facturarecibo_path(assigns(:facturarecibo))
  end

  test "should show facturarecibo" do
    get :show, :id => @facturarecibo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @facturarecibo.to_param
    assert_response :success
  end

  test "should update facturarecibo" do
    put :update, :id => @facturarecibo.to_param, :facturarecibo => @facturarecibo.attributes
    assert_redirected_to facturarecibo_path(assigns(:facturarecibo))
  end

  test "should destroy facturarecibo" do
    assert_difference('Facturarecibo.count', -1) do
      delete :destroy, :id => @facturarecibo.to_param
    end

    assert_redirected_to facturarecibos_path
  end
end
