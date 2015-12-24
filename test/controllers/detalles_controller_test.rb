require 'test_helper'

class DetallesControllerTest < ActionController::TestCase
  setup do
    @detalle = detalles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detalles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detalle" do
    assert_difference('Detalle.count') do
      post :create, detalle: { cantidad: @detalle.cantidad, factura_id: @detalle.factura_id, iva: @detalle.iva, nombre_pro: @detalle.nombre_pro, precio_u: @detalle.precio_u, producto_id: @detalle.producto_id, total_iva: @detalle.total_iva, total_pre: @detalle.total_pre }
    end

    assert_redirected_to detalle_path(assigns(:detalle))
  end

  test "should show detalle" do
    get :show, id: @detalle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detalle
    assert_response :success
  end

  test "should update detalle" do
    patch :update, id: @detalle, detalle: { cantidad: @detalle.cantidad, factura_id: @detalle.factura_id, iva: @detalle.iva, nombre_pro: @detalle.nombre_pro, precio_u: @detalle.precio_u, producto_id: @detalle.producto_id, total_iva: @detalle.total_iva, total_pre: @detalle.total_pre }
    assert_redirected_to detalle_path(assigns(:detalle))
  end

  test "should destroy detalle" do
    assert_difference('Detalle.count', -1) do
      delete :destroy, id: @detalle
    end

    assert_redirected_to detalles_path
  end
end
