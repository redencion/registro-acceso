require 'test_helper'

class SesionControllerTest < ActionDispatch::IntegrationTest
  test "should get crear" do
    get sesion_crear_url
    assert_response :success
  end

  test "should get cerrar" do
    get sesion_cerrar_url
    assert_response :success
  end

end
