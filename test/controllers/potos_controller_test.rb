require 'test_helper'

class PotosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poto = potos(:one)
  end

  test "should get index" do
    get potos_url
    assert_response :success
  end

  test "should get new" do
    get new_poto_url
    assert_response :success
  end

  test "should create poto" do
    assert_difference('Poto.count') do
      post potos_url, params: { poto: { contenu: @poto.contenu, titre: @poto.titre } }
    end

    assert_redirected_to poto_url(Poto.last)
  end

  test "should show poto" do
    get poto_url(@poto)
    assert_response :success
  end

  test "should get edit" do
    get edit_poto_url(@poto)
    assert_response :success
  end

  test "should update poto" do
    patch poto_url(@poto), params: { poto: { contenu: @poto.contenu, titre: @poto.titre } }
    assert_redirected_to poto_url(@poto)
  end

  test "should destroy poto" do
    assert_difference('Poto.count', -1) do
      delete poto_url(@poto)
    end

    assert_redirected_to potos_url
  end
end
