require 'test_helper'

class EventoinstanciaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eventoinstancium = eventoinstancia(:one)
  end

  test "should get index" do
    get eventoinstancia_url, as: :json
    assert_response :success
  end

  test "should create eventoinstancium" do
    assert_difference('Eventoinstancium.count') do
      post eventoinstancia_url, params: { eventoinstancium: { ciudad: @eventoinstancium.ciudad, cocinero_id: @eventoinstancium.cocinero_id, cupomaximo: @eventoinstancium.cupomaximo, cupominimo: @eventoinstancium.cupominimo, estadoinstancia: @eventoinstancium.estadoinstancia, estadorazon: @eventoinstancium.estadorazon, evento_id: @eventoinstancium.evento_id, fecha: @eventoinstancium.fecha, hora: @eventoinstancium.hora, precioinstancia: @eventoinstancium.precioinstancia, zona: @eventoinstancium.zona } }, as: :json
    end

    assert_response 201
  end

  test "should show eventoinstancium" do
    get eventoinstancium_url(@eventoinstancium), as: :json
    assert_response :success
  end

  test "should update eventoinstancium" do
    patch eventoinstancium_url(@eventoinstancium), params: { eventoinstancium: { ciudad: @eventoinstancium.ciudad, cocinero_id: @eventoinstancium.cocinero_id, cupomaximo: @eventoinstancium.cupomaximo, cupominimo: @eventoinstancium.cupominimo, estadoinstancia: @eventoinstancium.estadoinstancia, estadorazon: @eventoinstancium.estadorazon, evento_id: @eventoinstancium.evento_id, fecha: @eventoinstancium.fecha, hora: @eventoinstancium.hora, precioinstancia: @eventoinstancium.precioinstancia, zona: @eventoinstancium.zona } }, as: :json
    assert_response 200
  end

  test "should destroy eventoinstancium" do
    assert_difference('Eventoinstancium.count', -1) do
      delete eventoinstancium_url(@eventoinstancium), as: :json
    end

    assert_response 204
  end
end
