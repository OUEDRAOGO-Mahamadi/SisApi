require "test_helper"

class PaysUniteAdministrativesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pays_unite_administrative = pays_unite_administratives(:one)
  end

  test "should get index" do
    get pays_unite_administratives_url
    assert_response :success
  end

  test "should get new" do
    get new_pays_unite_administrative_url
    assert_response :success
  end

  test "should create pays_unite_administrative" do
    assert_difference('PaysUniteAdministrative.count') do
      post pays_unite_administratives_url, params: { pays_unite_administrative: { pay_id: @pays_unite_administrative.pay_id, unite_administrative_id: @pays_unite_administrative.unite_administrative_id } }
    end

    assert_redirected_to pays_unite_administrative_url(PaysUniteAdministrative.last)
  end

  test "should show pays_unite_administrative" do
    get pays_unite_administrative_url(@pays_unite_administrative)
    assert_response :success
  end

  test "should get edit" do
    get edit_pays_unite_administrative_url(@pays_unite_administrative)
    assert_response :success
  end

  test "should update pays_unite_administrative" do
    patch pays_unite_administrative_url(@pays_unite_administrative), params: { pays_unite_administrative: { pay_id: @pays_unite_administrative.pay_id, unite_administrative_id: @pays_unite_administrative.unite_administrative_id } }
    assert_redirected_to pays_unite_administrative_url(@pays_unite_administrative)
  end

  test "should destroy pays_unite_administrative" do
    assert_difference('PaysUniteAdministrative.count', -1) do
      delete pays_unite_administrative_url(@pays_unite_administrative)
    end

    assert_redirected_to pays_unite_administratives_url
  end
end
