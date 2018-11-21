require "application_system_test_case"

class OrganizacionsTest < ApplicationSystemTestCase
  setup do
    @organizacion = organizacions(:one)
  end

  test "visiting the index" do
    visit organizacions_url
    assert_selector "h1", text: "Organizacions"
  end

  test "creating a Organizacion" do
    visit organizacions_url
    click_on "New Organizacion"

    fill_in "Estatus", with: @organizacion.estatus
    fill_in "Fecha Registro", with: @organizacion.fecha_registro
    fill_in "Nombre", with: @organizacion.nombre
    click_on "Create Organizacion"

    assert_text "Organizacion was successfully created"
    click_on "Back"
  end

  test "updating a Organizacion" do
    visit organizacions_url
    click_on "Edit", match: :first

    fill_in "Estatus", with: @organizacion.estatus
    fill_in "Fecha Registro", with: @organizacion.fecha_registro
    fill_in "Nombre", with: @organizacion.nombre
    click_on "Update Organizacion"

    assert_text "Organizacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Organizacion" do
    visit organizacions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Organizacion was successfully destroyed"
  end
end
