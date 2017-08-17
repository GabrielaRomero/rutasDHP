require 'test_helper'

class LocalizacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @localizacion = localizacions(:one)
  end

  test "should get index" do
    get localizacions_url
    assert_response :success
  end

  test "should get new" do
    get new_localizacion_url
    assert_response :success
  end

  test "should create localizacion" do
    assert_difference('Localizacion.count') do
      post localizacions_url, params: { localizacion: { descripcion: @localizacion.descripcion, direccion: @localizacion.direccion, latitud: @localizacion.latitud, longitud: @localizacion.longitud, titulo: @localizacion.titulo } }
    end

    assert_redirected_to localizacion_url(Localizacion.last)
  end

  test "should show localizacion" do
    get localizacion_url(@localizacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_localizacion_url(@localizacion)
    assert_response :success
  end

  test "should update localizacion" do
    patch localizacion_url(@localizacion), params: { localizacion: { descripcion: @localizacion.descripcion, direccion: @localizacion.direccion, latitud: @localizacion.latitud, longitud: @localizacion.longitud, titulo: @localizacion.titulo } }
    assert_redirected_to localizacion_url(@localizacion)
  end

  test "should destroy localizacion" do
    assert_difference('Localizacion.count', -1) do
      delete localizacion_url(@localizacion)
    end

    assert_redirected_to localizacions_url
  end
end
