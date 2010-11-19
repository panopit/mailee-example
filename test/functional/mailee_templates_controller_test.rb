require 'test_helper'

class MaileeTemplatesControllerTest < ActionController::TestCase
  setup do
    @mailee_template = mailee_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mailee_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mailee_template" do
    assert_difference('MaileeTemplate.count') do
      post :create, :mailee_template => @mailee_template.attributes
    end

    assert_redirected_to mailee_template_path(assigns(:mailee_template))
  end

  test "should show mailee_template" do
    get :show, :id => @mailee_template.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @mailee_template.to_param
    assert_response :success
  end

  test "should update mailee_template" do
    put :update, :id => @mailee_template.to_param, :mailee_template => @mailee_template.attributes
    assert_redirected_to mailee_template_path(assigns(:mailee_template))
  end

  test "should destroy mailee_template" do
    assert_difference('MaileeTemplate.count', -1) do
      delete :destroy, :id => @mailee_template.to_param
    end

    assert_redirected_to mailee_templates_path
  end
end
