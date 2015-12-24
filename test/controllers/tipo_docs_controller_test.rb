require 'test_helper'

class TipoDocsControllerTest < ActionController::TestCase
  setup do
    @tipo_doc = tipo_docs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_docs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_doc" do
    assert_difference('TipoDoc.count') do
      post :create, tipo_doc: { nombre: @tipo_doc.nombre }
    end

    assert_redirected_to tipo_doc_path(assigns(:tipo_doc))
  end

  test "should show tipo_doc" do
    get :show, id: @tipo_doc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_doc
    assert_response :success
  end

  test "should update tipo_doc" do
    patch :update, id: @tipo_doc, tipo_doc: { nombre: @tipo_doc.nombre }
    assert_redirected_to tipo_doc_path(assigns(:tipo_doc))
  end

  test "should destroy tipo_doc" do
    assert_difference('TipoDoc.count', -1) do
      delete :destroy, id: @tipo_doc
    end

    assert_redirected_to tipo_docs_path
  end
end
