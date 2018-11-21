require 'test_helper'

class OrganizacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organizacion = organizacions(:one)
  end

  test "should get index" do
    get organizacions_url
    assert_response :success
  end

  test "should get new" do
    get new_organizacion_url
    assert_response :success
  end

  test "should create organizacion" do
    assert_difference('Organizacion.count') do
      post organizacions_url, params: { organizacion: { estatus: @organizacion.estatus, fecha_registro: @organizacion.fecha_registro, nombre: @organizacion.nombre } }
    end

    assert_redirected_to organizacion_url(Organizacion.last)
  end

  test "should show organizacion" do
    get organizacion_url(@organizacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_organizacion_url(@organizacion)
    assert_response :success
  end

  test "should update organizacion" do
    patch organizacion_url(@organizacion), params: { organizacion: { estatus: @organizacion.estatus, fecha_registro: @organizacion.fecha_registro, nombre: @organizacion.nombre } }
    assert_redirected_to organizacion_url(@organizacion)
  end

  test "should destroy organizacion" do
    assert_difference('Organizacion.count', -1) do
      delete organizacion_url(@organizacion)
    end

    assert_redirected_to organizacions_url
  end
end
