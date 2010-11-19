require 'test_helper'

class MaileeListsControllerTest < ActionController::TestCase
  setup do
    @mailee_list = mailee_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mailee_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mailee_list" do
    assert_difference('MaileeList.count') do
      post :create, :mailee_list => @mailee_list.attributes
    end

    assert_redirected_to mailee_list_path(assigns(:mailee_list))
  end

  test "should show mailee_list" do
    get :show, :id => @mailee_list.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @mailee_list.to_param
    assert_response :success
  end

  test "should update mailee_list" do
    put :update, :id => @mailee_list.to_param, :mailee_list => @mailee_list.attributes
    assert_redirected_to mailee_list_path(assigns(:mailee_list))
  end

  test "should destroy mailee_list" do
    assert_difference('MaileeList.count', -1) do
      delete :destroy, :id => @mailee_list.to_param
    end

    assert_redirected_to mailee_lists_path
  end
end
