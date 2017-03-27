require 'test_helper'

class GopisControllerTest < ActionController::TestCase
  setup do
    @gopi = gopis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gopis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gopi" do
    assert_difference('Gopi.count') do
      post :create, gopi: { email: @gopi.email, name: @gopi.name }
    end

    assert_redirected_to gopi_path(assigns(:gopi))
  end

  test "should show gopi" do
    get :show, id: @gopi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gopi
    assert_response :success
  end

  test "should update gopi" do
    patch :update, id: @gopi, gopi: { email: @gopi.email, name: @gopi.name }
    assert_redirected_to gopi_path(assigns(:gopi))
  end

  test "should destroy gopi" do
    assert_difference('Gopi.count', -1) do
      delete :destroy, id: @gopi
    end

    assert_redirected_to gopis_path
  end
end
