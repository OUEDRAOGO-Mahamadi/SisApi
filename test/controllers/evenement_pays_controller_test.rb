require "test_helper"

class EvenementPaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evenement_pay = evenement_pays(:one)
  end

  test "should get index" do
    get evenement_pays_url
    assert_response :success
  end

  test "should get new" do
    get new_evenement_pay_url
    assert_response :success
  end

  test "should create evenement_pay" do
    assert_difference('EvenementPay.count') do
      post evenement_pays_url, params: { evenement_pay: { evenement_id: @evenement_pay.evenement_id, pay_id: @evenement_pay.pay_id } }
    end

    assert_redirected_to evenement_pay_url(EvenementPay.last)
  end

  test "should show evenement_pay" do
    get evenement_pay_url(@evenement_pay)
    assert_response :success
  end

  test "should get edit" do
    get edit_evenement_pay_url(@evenement_pay)
    assert_response :success
  end

  test "should update evenement_pay" do
    patch evenement_pay_url(@evenement_pay), params: { evenement_pay: { evenement_id: @evenement_pay.evenement_id, pay_id: @evenement_pay.pay_id } }
    assert_redirected_to evenement_pay_url(@evenement_pay)
  end

  test "should destroy evenement_pay" do
    assert_difference('EvenementPay.count', -1) do
      delete evenement_pay_url(@evenement_pay)
    end

    assert_redirected_to evenement_pays_url
  end
end
