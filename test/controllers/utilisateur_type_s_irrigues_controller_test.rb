require "test_helper"

class UtilisateurTypeSIrriguesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @utilisateur_type_s_irrigue = utilisateur_type_s_irrigues(:one)
  end

  test "should get index" do
    get utilisateur_type_s_irrigues_url
    assert_response :success
  end

  test "should get new" do
    get new_utilisateur_type_s_irrigue_url
    assert_response :success
  end

  test "should create utilisateur_type_s_irrigue" do
    assert_difference('UtilisateurTypeSIrrigue.count') do
      post utilisateur_type_s_irrigues_url, params: { utilisateur_type_s_irrigue: { type_systeme_irrigue_id: @utilisateur_type_s_irrigue.type_systeme_irrigue_id, utilisateur_id: @utilisateur_type_s_irrigue.utilisateur_id } }
    end

    assert_redirected_to utilisateur_type_s_irrigue_url(UtilisateurTypeSIrrigue.last)
  end

  test "should show utilisateur_type_s_irrigue" do
    get utilisateur_type_s_irrigue_url(@utilisateur_type_s_irrigue)
    assert_response :success
  end

  test "should get edit" do
    get edit_utilisateur_type_s_irrigue_url(@utilisateur_type_s_irrigue)
    assert_response :success
  end

  test "should update utilisateur_type_s_irrigue" do
    patch utilisateur_type_s_irrigue_url(@utilisateur_type_s_irrigue), params: { utilisateur_type_s_irrigue: { type_systeme_irrigue_id: @utilisateur_type_s_irrigue.type_systeme_irrigue_id, utilisateur_id: @utilisateur_type_s_irrigue.utilisateur_id } }
    assert_redirected_to utilisateur_type_s_irrigue_url(@utilisateur_type_s_irrigue)
  end

  test "should destroy utilisateur_type_s_irrigue" do
    assert_difference('UtilisateurTypeSIrrigue.count', -1) do
      delete utilisateur_type_s_irrigue_url(@utilisateur_type_s_irrigue)
    end

    assert_redirected_to utilisateur_type_s_irrigues_url
  end
end
