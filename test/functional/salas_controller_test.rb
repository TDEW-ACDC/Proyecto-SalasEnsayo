require 'test_helper'

class SalasControllerTest < ActionController::TestCase
  setup do
    @sala = salas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:salas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sala" do
    assert_difference('Sala.count') do
      post :create, sala: @sala.attributes
    end

    assert_redirected_to sala_path(assigns(:sala))
  end

  test "should show sala" do
    get :show, id: @sala
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sala
    assert_response :success
  end

  test "should update sala" do
    put :update, id: @sala, sala: @sala.attributes
    assert_redirected_to sala_path(assigns(:sala))
  end

  test "should destroy sala" do
    assert_difference('Sala.count', -1) do
      delete :destroy, id: @sala
    end

    assert_redirected_to salas_path
  end
end
