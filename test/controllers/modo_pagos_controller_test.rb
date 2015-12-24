require 'test_helper'

class ModoPagosControllerTest < ActionController::TestCase
  setup do
    @modo_pago = modo_pagos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:modo_pagos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create modo_pago" do
    assert_difference('ModoPago.count') do
      post :create, modo_pago: { nombre: @modo_pago.nombre, otros_detalle: @modo_pago.otros_detalle }
    end

    assert_redirected_to modo_pago_path(assigns(:modo_pago))
  end

  test "should show modo_pago" do
    get :show, id: @modo_pago
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @modo_pago
    assert_response :success
  end

  test "should update modo_pago" do
    patch :update, id: @modo_pago, modo_pago: { nombre: @modo_pago.nombre, otros_detalle: @modo_pago.otros_detalle }
    assert_redirected_to modo_pago_path(assigns(:modo_pago))
  end

  test "should destroy modo_pago" do
    assert_difference('ModoPago.count', -1) do
      delete :destroy, id: @modo_pago
    end

    assert_redirected_to modo_pagos_path
  end
end
