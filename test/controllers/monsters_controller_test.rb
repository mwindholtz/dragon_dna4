require File.dirname(__FILE__) + '/../test_helper'

class MonstersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monsters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monster" do
    assert_difference('Monster.count') do
      post :create, :monster => monster_attrs
      assert assigns(:monster).valid?
    end

    assert_redirected_to monster_path(assigns(:monster))
  end

  test "should show monster" do
    get :show, :id => targets(:orc).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => targets(:orc).id
    assert_response :success
  end

  test "should update monster" do
    put :update, :id => targets(:orc).id, :monster => { :name => "Burp"}
    assert_redirected_to monster_path(assigns(:monster))
  end

  test "should destroy monster" do
    assert_difference('Monster.count', -1) do
      delete :destroy, :id => targets(:orc).id
    end

    assert_redirected_to monsters_path
  end
end
