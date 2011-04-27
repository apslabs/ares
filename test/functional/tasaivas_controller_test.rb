require 'test_helper'

class TasaivasControllerTest < ActionController::TestCase
  setup do
    @tasaiva = tasaivas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tasaivas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tasaiva" do
    assert_difference('Tasaiva.count') do
      post :create, :tasaiva => @tasaiva.attributes
    end

    assert_redirected_to tasaiva_path(assigns(:tasaiva))
  end

  test "should show tasaiva" do
    get :show, :id => @tasaiva.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tasaiva.to_param
    assert_response :success
  end

  test "should update tasaiva" do
    put :update, :id => @tasaiva.to_param, :tasaiva => @tasaiva.attributes
    assert_redirected_to tasaiva_path(assigns(:tasaiva))
  end

  test "should destroy tasaiva" do
    assert_difference('Tasaiva.count', -1) do
      delete :destroy, :id => @tasaiva.to_param
    end

    assert_redirected_to tasaivas_path
  end
end
