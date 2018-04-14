require 'test_helper'

class PersonasreservasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personasreserva = personasreservas(:one)
  end

  test "should get index" do
    get personasreservas_url, as: :json
    assert_response :success
  end

  test "should create personasreserva" do
    assert_difference('Personasreserva.count') do
      post personasreservas_url, params: { personasreserva: { apellido1: @personasreserva.apellido1, apellido2: @personasreserva.apellido2, celular: @personasreserva.celular, email: @personasreserva.email, nombre1: @personasreserva.nombre1, nombre2: @personasreserva.nombre2, reserva_id: @personasreserva.reserva_id, telefono: @personasreserva.telefono } }, as: :json
    end

    assert_response 201
  end

  test "should show personasreserva" do
    get personasreserva_url(@personasreserva), as: :json
    assert_response :success
  end

  test "should update personasreserva" do
    patch personasreserva_url(@personasreserva), params: { personasreserva: { apellido1: @personasreserva.apellido1, apellido2: @personasreserva.apellido2, celular: @personasreserva.celular, email: @personasreserva.email, nombre1: @personasreserva.nombre1, nombre2: @personasreserva.nombre2, reserva_id: @personasreserva.reserva_id, telefono: @personasreserva.telefono } }, as: :json
    assert_response 200
  end

  test "should destroy personasreserva" do
    assert_difference('Personasreserva.count', -1) do
      delete personasreserva_url(@personasreserva), as: :json
    end

    assert_response 204
  end
end
