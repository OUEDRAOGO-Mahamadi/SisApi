require "test_helper"

class UtilisateurSpecialitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @utilisateur_specialite = utilisateur_specialites(:one)
  end

  test "should get index" do
    get utilisateur_specialites_url
    assert_response :success
  end

  test "should get new" do
    get new_utilisateur_specialite_url
    assert_response :success
  end

  test "should create utilisateur_specialite" do
    assert_difference('UtilisateurSpecialite.count') do
      post utilisateur_specialites_url, params: { utilisateur_specialite: { specialite_id: @utilisateur_specialite.specialite_id, utilisateur_id: @utilisateur_specialite.utilisateur_id } }
    end

    assert_redirected_to utilisateur_specialite_url(UtilisateurSpecialite.last)
  end

  test "should show utilisateur_specialite" do
    get utilisateur_specialite_url(@utilisateur_specialite)
    assert_response :success
  end

  test "should get edit" do
    get edit_utilisateur_specialite_url(@utilisateur_specialite)
    assert_response :success
  end

  test "should update utilisateur_specialite" do
    patch utilisateur_specialite_url(@utilisateur_specialite), params: { utilisateur_specialite: { specialite_id: @utilisateur_specialite.specialite_id, utilisateur_id: @utilisateur_specialite.utilisateur_id } }
    assert_redirected_to utilisateur_specialite_url(@utilisateur_specialite)
  end

  test "should destroy utilisateur_specialite" do
    assert_difference('UtilisateurSpecialite.count', -1) do
      delete utilisateur_specialite_url(@utilisateur_specialite)
    end

    assert_redirected_to utilisateur_specialites_url
  end
end
