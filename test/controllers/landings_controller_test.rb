require 'test_helper'

class LandingsControllerTest < ActionController::TestCase
  setup do
    @landing = landings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:landings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create landing" do
    assert_difference('Landing.count') do
      post :create, landing: { about: @landing.about, about_sub: @landing.about_sub, description: @landing.description, image: @landing.image, philosophy: @landing.philosophy, title: @landing.title }
    end

    assert_redirected_to landing_path(assigns(:landing))
  end

  test "should show landing" do
    get :show, id: @landing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @landing
    assert_response :success
  end

  test "should update landing" do
    patch :update, id: @landing, landing: { about: @landing.about, about_sub: @landing.about_sub, description: @landing.description, image: @landing.image, philosophy: @landing.philosophy, title: @landing.title }
    assert_redirected_to landing_path(assigns(:landing))
  end

  test "should destroy landing" do
    assert_difference('Landing.count', -1) do
      delete :destroy, id: @landing
    end

    assert_redirected_to landings_path
  end
end
