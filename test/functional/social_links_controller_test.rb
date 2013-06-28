require 'test_helper'

class SocialLinksControllerTest < ActionController::TestCase
  setup do
    @social_link = social_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:social_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create social_link" do
    assert_difference('SocialLink.count') do
      post :create, :social_link => @social_link.attributes
    end

    assert_redirected_to social_link_path(assigns(:social_link))
  end

  test "should show social_link" do
    get :show, :id => @social_link.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @social_link.to_param
    assert_response :success
  end

  test "should update social_link" do
    put :update, :id => @social_link.to_param, :social_link => @social_link.attributes
    assert_redirected_to social_link_path(assigns(:social_link))
  end

  test "should destroy social_link" do
    assert_difference('SocialLink.count', -1) do
      delete :destroy, :id => @social_link.to_param
    end

    assert_redirected_to social_links_path
  end
end
