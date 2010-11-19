require 'test_helper'

class MaileeMessagesControllerTest < ActionController::TestCase
  setup do
    @mailee_message = mailee_messages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mailee_messages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mailee_message" do
    assert_difference('MaileeMessage.count') do
      post :create, :mailee_message => @mailee_message.attributes
    end

    assert_redirected_to mailee_message_path(assigns(:mailee_message))
  end

  test "should show mailee_message" do
    get :show, :id => @mailee_message.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @mailee_message.to_param
    assert_response :success
  end

  test "should update mailee_message" do
    put :update, :id => @mailee_message.to_param, :mailee_message => @mailee_message.attributes
    assert_redirected_to mailee_message_path(assigns(:mailee_message))
  end

  test "should destroy mailee_message" do
    assert_difference('MaileeMessage.count', -1) do
      delete :destroy, :id => @mailee_message.to_param
    end

    assert_redirected_to mailee_messages_path
  end
end
