require "test_helper"

class UniteAdministrativesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unite_administrative = unite_administratives(:one)
  end

  test "should get index" do
    get unite_administratives_url
    assert_response :success
  end

  test "should get new" do
    get new_unite_administrative_url
    assert_response :success
  end

  test "should create unite_administrative" do
    assert_difference('UniteAdministrative.count') do
      post unite_administratives_url, params: { unite_administrative: { code: @unite_administrative.code, libelle: @unite_administrative.libelle } }
    end

    assert_redirected_to unite_administrative_url(UniteAdministrative.last)
  end

  test "should show unite_administrative" do
    get unite_administrative_url(@unite_administrative)
    assert_response :success
  end

  test "should get edit" do
    get edit_unite_administrative_url(@unite_administrative)
    assert_response :success
  end

  test "should update unite_administrative" do
    patch unite_administrative_url(@unite_administrative), params: { unite_administrative: { code: @unite_administrative.code, libelle: @unite_administrative.libelle } }
    assert_redirected_to unite_administrative_url(@unite_administrative)
  end

  test "should destroy unite_administrative" do
    assert_difference('UniteAdministrative.count', -1) do
      delete unite_administrative_url(@unite_administrative)
    end

    assert_redirected_to unite_administratives_url
  end
end
