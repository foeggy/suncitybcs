require 'test_helper'

class PromosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:promos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create promo" do
    assert_difference('Promo.count') do
      post :create, :promo => { }
    end

    assert_redirected_to promo_path(assigns(:promo))
  end

  test "should show promo" do
    get :show, :id => promos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => promos(:one).to_param
    assert_response :success
  end

  test "should update promo" do
    put :update, :id => promos(:one).to_param, :promo => { }
    assert_redirected_to promo_path(assigns(:promo))
  end

  test "should destroy promo" do
    assert_difference('Promo.count', -1) do
      delete :destroy, :id => promos(:one).to_param
    end

    assert_redirected_to promos_path
  end
end
