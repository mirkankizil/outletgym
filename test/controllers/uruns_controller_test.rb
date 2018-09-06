require 'test_helper'

class UrunsControllerTest < ActionController::TestCase
  setup do
    @urun = uruns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uruns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create urun" do
    assert_difference('Urun.count') do
      post :create, urun: { baslik: @urun.baslik, icerik: @urun.icerik }
    end

    assert_redirected_to urun_path(assigns(:urun))
  end

  test "should show urun" do
    get :show, id: @urun
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @urun
    assert_response :success
  end

  test "should update urun" do
    patch :update, id: @urun, urun: { baslik: @urun.baslik, icerik: @urun.icerik }
    assert_redirected_to urun_path(assigns(:urun))
  end

  test "should destroy urun" do
    assert_difference('Urun.count', -1) do
      delete :destroy, id: @urun
    end

    assert_redirected_to uruns_path
  end
end
