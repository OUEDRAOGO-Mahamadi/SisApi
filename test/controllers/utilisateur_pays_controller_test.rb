require "test_helper"

class UtilisateurPaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @utilisateur_pay = utilisateur_pays(:one)
  end

  test "should get index" do
    get utilisateur_pays_url
    assert_response :success
  end

  test "should get new" do
    get new_utilisateur_pay_url
    assert_response :success
  end

  test "should create utilisateur_pay" do
    assert_difference('UtilisateurPay.count') do
      post utilisateur_pays_url, params: { utilisateur_pay: { pay_id: @utilisateur_pay.pay_id, utilisateur_id: @utilisateur_pay.utilisateur_id } }
    end

    assert_redirected_to utilisateur_pay_url(UtilisateurPay.last)
  end

  test "should show utilisateur_pay" do
    get utilisateur_pay_url(@utilisateur_pay)
    assert_response :success
  end

  test "should get edit" do
    get edit_utilisateur_pay_url(@utilisateur_pay)
    assert_response :success
  end

  test "should update utilisateur_pay" do
    patch utilisateur_pay_url(@utilisateur_pay), params: { utilisateur_pay: { pay_id: @utilisateur_pay.pay_id, utilisateur_id: @utilisateur_pay.utilisateur_id } }
    assert_redirected_to utilisateur_pay_url(@utilisateur_pay)
  end

  test "should destroy utilisateur_pay" do
    assert_difference('UtilisateurPay.count', -1) do
      delete utilisateur_pay_url(@utilisateur_pay)
    end

    assert_redirected_to utilisateur_pays_url
  end
end
