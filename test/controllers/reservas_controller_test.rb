require 'test_helper'

class ReservasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reserva = reservas(:one)
  end

  test "should get index" do
    get reservas_url, as: :json
    assert_response :success
  end

  test "should create reserva" do
    assert_difference('Reserva.count') do
      post reservas_url, params: { reserva: { cantidadpersonas: @reserva.cantidadpersonas, codigo: @reserva.codigo, empresa_id: @reserva.empresa_id, evento_id: @reserva.evento_id, eventoinstancia_id: @reserva.eventoinstancia_id, precio: @reserva.precio, usuario_id: @reserva.usuario_id } }, as: :json
    end

    assert_response 201
  end

  test "should show reserva" do
    get reserva_url(@reserva), as: :json
    assert_response :success
  end

  test "should update reserva" do
    patch reserva_url(@reserva), params: { reserva: { cantidadpersonas: @reserva.cantidadpersonas, codigo: @reserva.codigo, empresa_id: @reserva.empresa_id, evento_id: @reserva.evento_id, eventoinstancia_id: @reserva.eventoinstancia_id, precio: @reserva.precio, usuario_id: @reserva.usuario_id } }, as: :json
    assert_response 200
  end

  test "should destroy reserva" do
    assert_difference('Reserva.count', -1) do
      delete reserva_url(@reserva), as: :json
    end

    assert_response 204
  end
end
