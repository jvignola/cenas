require 'test_helper'

class ComisioneventosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comisionevento = comisioneventos(:one)
  end

  test "should get index" do
    get comisioneventos_url, as: :json
    assert_response :success
  end

  test "should create comisionevento" do
    assert_difference('Comisionevento.count') do
      post comisioneventos_url, params: { comisionevento: { evento_id: @comisionevento.evento_id, tipo: @comisionevento.tipo, valor: @comisionevento.valor, vigencia: @comisionevento.vigencia } }, as: :json
    end

    assert_response 201
  end

  test "should show comisionevento" do
    get comisionevento_url(@comisionevento), as: :json
    assert_response :success
  end

  test "should update comisionevento" do
    patch comisionevento_url(@comisionevento), params: { comisionevento: { evento_id: @comisionevento.evento_id, tipo: @comisionevento.tipo, valor: @comisionevento.valor, vigencia: @comisionevento.vigencia } }, as: :json
    assert_response 200
  end

  test "should destroy comisionevento" do
    assert_difference('Comisionevento.count', -1) do
      delete comisionevento_url(@comisionevento), as: :json
    end

    assert_response 204
  end
end
