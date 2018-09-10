require 'test_helper'

class AccesoControllerTest < ActionDispatch::IntegrationTest
  test "should get verificacion" do
    get acceso_verificacion_url
    assert_response :success
  end

end
