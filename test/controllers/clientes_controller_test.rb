require 'test_helper'

class ClientesControllerTest < ActionController::TestCase
  setup do
    @cliente = clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cliente" do
    assert_difference('Cliente.count') do
      post :create, cliente: { apellido: @cliente.apellido, direccion: @cliente.direccion, docIdentidad: @cliente.docIdentidad, estado_civil_id: @cliente.estado_civil_id, fch_nacimiento: @cliente.fch_nacimiento, genero: @cliente.genero, mail: @cliente.mail, municipio_id: @cliente.municipio_id, nombre: @cliente.nombre, tMovil: @cliente.tMovil, telefono1: @cliente.telefono1, telefono2: @cliente.telefono2, tipo_doc_id: @cliente.tipo_doc_id }
    end

    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should show cliente" do
    get :show, id: @cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cliente
    assert_response :success
  end

  test "should update cliente" do
    patch :update, id: @cliente, cliente: { apellido: @cliente.apellido, direccion: @cliente.direccion, docIdentidad: @cliente.docIdentidad, estado_civil_id: @cliente.estado_civil_id, fch_nacimiento: @cliente.fch_nacimiento, genero: @cliente.genero, mail: @cliente.mail, municipio_id: @cliente.municipio_id, nombre: @cliente.nombre, tMovil: @cliente.tMovil, telefono1: @cliente.telefono1, telefono2: @cliente.telefono2, tipo_doc_id: @cliente.tipo_doc_id }
    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should destroy cliente" do
    assert_difference('Cliente.count', -1) do
      delete :destroy, id: @cliente
    end

    assert_redirected_to clientes_path
  end
end
