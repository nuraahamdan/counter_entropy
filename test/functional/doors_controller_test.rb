require 'test_helper'

class DoorsControllerTest < ActionController::TestCase
  setup do
    @door = doors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create door" do
    assert_difference('Door.count') do
      post :create, :door => { :idname => @door.idname, :ip => @door.ip, :room => @door.room, :state => @door.state }
    end

    assert_redirected_to door_path(assigns(:door))
  end

  test "should show door" do
    get :show, :id => @door
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @door
    assert_response :success
  end

  test "should update door" do
    put :update, :id => @door, :door => { :idname => @door.idname, :ip => @door.ip, :room => @door.room, :state => @door.state }
    assert_redirected_to door_path(assigns(:door))
  end

  test "should destroy door" do
    assert_difference('Door.count', -1) do
      delete :destroy, :id => @door
    end

    assert_redirected_to doors_path
  end
end
