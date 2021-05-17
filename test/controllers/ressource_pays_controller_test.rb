require "test_helper"

class RessourcePaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ressource_pay = ressource_pays(:one)
  end

  test "should get index" do
    get ressource_pays_url
    assert_response :success
  end

  test "should get new" do
    get new_ressource_pay_url
    assert_response :success
  end

  test "should create ressource_pay" do
    assert_difference('RessourcePay.count') do
      post ressource_pays_url, params: { ressource_pay: { pay_id: @ressource_pay.pay_id, ressource_id: @ressource_pay.ressource_id } }
    end

    assert_redirected_to ressource_pay_url(RessourcePay.last)
  end

  test "should show ressource_pay" do
    get ressource_pay_url(@ressource_pay)
    assert_response :success
  end

  test "should get edit" do
    get edit_ressource_pay_url(@ressource_pay)
    assert_response :success
  end

  test "should update ressource_pay" do
    patch ressource_pay_url(@ressource_pay), params: { ressource_pay: { pay_id: @ressource_pay.pay_id, ressource_id: @ressource_pay.ressource_id } }
    assert_redirected_to ressource_pay_url(@ressource_pay)
  end

  test "should destroy ressource_pay" do
    assert_difference('RessourcePay.count', -1) do
      delete ressource_pay_url(@ressource_pay)
    end

    assert_redirected_to ressource_pays_url
  end
end
