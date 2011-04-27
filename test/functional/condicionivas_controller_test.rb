require 'test_helper'

class CondicionivasControllerTest < ActionController::TestCase
  setup do
    @condicioniva = condicionivas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:condicionivas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create condicioniva" do
    assert_difference('Condicioniva.count') do
      post :create, :condicioniva => @condicioniva.attributes
    end

    assert_redirected_to condicioniva_path(assigns(:condicioniva))
  end

  test "should show condicioniva" do
    get :show, :id => @condicioniva.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @condicioniva.to_param
    assert_response :success
  end

  test "should update condicioniva" do
    put :update, :id => @condicioniva.to_param, :condicioniva => @condicioniva.attributes
    assert_redirected_to condicioniva_path(assigns(:condicioniva))
  end

  test "should destroy condicioniva" do
    assert_difference('Condicioniva.count', -1) do
      delete :destroy, :id => @condicioniva.to_param
    end

    assert_redirected_to condicionivas_path
  end
end
