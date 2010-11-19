require 'test_helper'

class MaileeContactsControllerTest < ActionController::TestCase
  setup do
    @mailee_contact = mailee_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mailee_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mailee_contact" do
    assert_difference('MaileeContact.count') do
      post :create, :mailee_contact => @mailee_contact.attributes
    end

    assert_redirected_to mailee_contact_path(assigns(:mailee_contact))
  end

  test "should show mailee_contact" do
    get :show, :id => @mailee_contact.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @mailee_contact.to_param
    assert_response :success
  end

  test "should update mailee_contact" do
    put :update, :id => @mailee_contact.to_param, :mailee_contact => @mailee_contact.attributes
    assert_redirected_to mailee_contact_path(assigns(:mailee_contact))
  end

  test "should destroy mailee_contact" do
    assert_difference('MaileeContact.count', -1) do
      delete :destroy, :id => @mailee_contact.to_param
    end

    assert_redirected_to mailee_contacts_path
  end
end
