require 'test_helper'

class TagIconsControllerTest < ActionController::TestCase
  setup do
    @tag_icon = tag_icons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tag_icons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tag_icon" do
    assert_difference('TagIcon.count') do
      post :create, :tag_icon => @tag_icon.attributes
    end

    assert_redirected_to tag_icon_path(assigns(:tag_icon))
  end

  test "should show tag_icon" do
    get :show, :id => @tag_icon.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tag_icon.to_param
    assert_response :success
  end

  test "should update tag_icon" do
    put :update, :id => @tag_icon.to_param, :tag_icon => @tag_icon.attributes
    assert_redirected_to tag_icon_path(assigns(:tag_icon))
  end

  test "should destroy tag_icon" do
    assert_difference('TagIcon.count', -1) do
      delete :destroy, :id => @tag_icon.to_param
    end

    assert_redirected_to tag_icons_path
  end
end
