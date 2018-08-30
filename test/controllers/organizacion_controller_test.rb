require 'test_helper'

class OrganizacionControllerTest < ActionDispatch::IntegrationTest
  test "should get _form" do
    get organizacion__form_url
    assert_response :success
  end

  test "should get edit" do
    get organizacion_edit_url
    assert_response :success
  end

  test "should get new" do
    get organizacion_new_url
    assert_response :success
  end

end
