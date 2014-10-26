require 'test_helper'

class SubmodulosControllerTest < ActionController::TestCase
  setup do
    @submodulo = submodulos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:submodulos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create submodulo" do
    assert_difference('Submodulo.count') do
      post :create, submodulo: { modelo: @submodulo.modelo, pinesAnalogicos: @submodulo.pinesAnalogicos, pinesDigitales: @submodulo.pinesDigitales, sistema_domotico_id: @submodulo.sistema_domotico_id, submodulo: @submodulo.submodulo }
    end

    assert_redirected_to submodulo_path(assigns(:submodulo))
  end

  test "should show submodulo" do
    get :show, id: @submodulo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @submodulo
    assert_response :success
  end

  test "should update submodulo" do
    patch :update, id: @submodulo, submodulo: { modelo: @submodulo.modelo, pinesAnalogicos: @submodulo.pinesAnalogicos, pinesDigitales: @submodulo.pinesDigitales, sistema_domotico_id: @submodulo.sistema_domotico_id, submodulo: @submodulo.submodulo }
    assert_redirected_to submodulo_path(assigns(:submodulo))
  end

  test "should destroy submodulo" do
    assert_difference('Submodulo.count', -1) do
      delete :destroy, id: @submodulo
    end

    assert_redirected_to submodulos_path
  end
end
