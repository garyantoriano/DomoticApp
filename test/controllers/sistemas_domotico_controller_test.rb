require 'test_helper'

class SistemasDomoticoControllerTest < ActionController::TestCase
  setup do
    @sistema_domotico = sistemas_domotico(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sistemas_domotico)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sistema_domotico" do
    assert_difference('SistemaDomotico.count') do
      post :create, sistema_domotico: { estado: @sistema_domotico.estado, ip: @sistema_domotico.ip, nombre: @sistema_domotico.nombre }
    end

    assert_redirected_to sistema_domotico_path(assigns(:sistema_domotico))
  end

  test "should show sistema_domotico" do
    get :show, id: @sistema_domotico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sistema_domotico
    assert_response :success
  end

  test "should update sistema_domotico" do
    patch :update, id: @sistema_domotico, sistema_domotico: { estado: @sistema_domotico.estado, ip: @sistema_domotico.ip, nombre: @sistema_domotico.nombre }
    assert_redirected_to sistema_domotico_path(assigns(:sistema_domotico))
  end

  test "should destroy sistema_domotico" do
    assert_difference('SistemaDomotico.count', -1) do
      delete :destroy, id: @sistema_domotico
    end

    assert_redirected_to sistemas_domotico_path
  end
end
