require 'test_helper'

class MunicipiosControllerTest < ActionController::TestCase
  setup do
    @municipio = municipios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:municipios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create municipio" do
    assert_difference('Municipio.count') do
      post :create, municipio: { nombre: @municipio.nombre, nombre_centro_poblado: @municipio.nombre_centro_poblado, nombre_departamento: @municipio.nombre_departamento, nombre_municipio: @municipio.nombre_municipio }
    end

    assert_redirected_to municipio_path(assigns(:municipio))
  end

  test "should show municipio" do
    get :show, id: @municipio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @municipio
    assert_response :success
  end

  test "should update municipio" do
    patch :update, id: @municipio, municipio: { nombre: @municipio.nombre, nombre_centro_poblado: @municipio.nombre_centro_poblado, nombre_departamento: @municipio.nombre_departamento, nombre_municipio: @municipio.nombre_municipio }
    assert_redirected_to municipio_path(assigns(:municipio))
  end

  test "should destroy municipio" do
    assert_difference('Municipio.count', -1) do
      delete :destroy, id: @municipio
    end

    assert_redirected_to municipios_path
  end
end
