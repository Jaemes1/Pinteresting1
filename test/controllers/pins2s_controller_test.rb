require 'test_helper'

class Pins2sControllerTest < ActionController::TestCase
  setup do
    @pins2 = pins2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pins2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pins2" do
    assert_difference('Pins2.count') do
      post :create, pins2: { description: @pins2.description }
    end

    assert_redirected_to pins2_path(assigns(:pins2))
  end

  test "should show pins2" do
    get :show, id: @pins2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pins2
    assert_response :success
  end

  test "should update pins2" do
    patch :update, id: @pins2, pins2: { description: @pins2.description }
    assert_redirected_to pins2_path(assigns(:pins2))
  end

  test "should destroy pins2" do
    assert_difference('Pins2.count', -1) do
      delete :destroy, id: @pins2
    end

    assert_redirected_to pins2s_path
  end
end
