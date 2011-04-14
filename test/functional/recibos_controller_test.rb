require 'test_helper'

class RecibosControllerTest < ActionController::TestCase
  setup do
    @recibo = recibos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recibos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recibo" do
    assert_difference('Recibo.count') do
      post :create, :recibo => @recibo.attributes
    end

    assert_redirected_to recibo_path(assigns(:recibo))
  end

  test "should show recibo" do
    get :show, :id => @recibo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @recibo.to_param
    assert_response :success
  end

  test "should update recibo" do
    put :update, :id => @recibo.to_param, :recibo => @recibo.attributes
    assert_redirected_to recibo_path(assigns(:recibo))
  end

  test "should destroy recibo" do
    assert_difference('Recibo.count', -1) do
      delete :destroy, :id => @recibo.to_param
    end

    assert_redirected_to recibos_path
  end
end
