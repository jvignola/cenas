require 'test_helper'

class OrganizadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organizador = organizadors(:one)
  end

  test "should get index" do
    get organizadors_url, as: :json
    assert_response :success
  end

  test "should create organizador" do
    assert_difference('Organizador.count') do
      post organizadors_url, params: { organizador: { apellido1: @organizador.apellido1, apellido2: @organizador.apellido2, descripcion: @organizador.descripcion, email: @organizador.email, empresa_id: @organizador.empresa_id, estadoinicialeventos: @organizador.estadoinicialeventos, evento_id: @organizador.evento_id, nombre1: @organizador.nombre1, nombre2: @organizador.nombre2, telefono: @organizador.telefono } }, as: :json
    end

    assert_response 201
  end

  test "should show organizador" do
    get organizador_url(@organizador), as: :json
    assert_response :success
  end

  test "should update organizador" do
    patch organizador_url(@organizador), params: { organizador: { apellido1: @organizador.apellido1, apellido2: @organizador.apellido2, descripcion: @organizador.descripcion, email: @organizador.email, empresa_id: @organizador.empresa_id, estadoinicialeventos: @organizador.estadoinicialeventos, evento_id: @organizador.evento_id, nombre1: @organizador.nombre1, nombre2: @organizador.nombre2, telefono: @organizador.telefono } }, as: :json
    assert_response 200
  end

  test "should destroy organizador" do
    assert_difference('Organizador.count', -1) do
      delete organizador_url(@organizador), as: :json
    end

    assert_response 204
  end
end
