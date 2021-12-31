require "test_helper"

class UtilisateurThematiquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @utilisateur_thematique = utilisateur_thematiques(:one)
  end

  test "should get index" do
    get utilisateur_thematiques_url
    assert_response :success
  end

  test "should get new" do
    get new_utilisateur_thematique_url
    assert_response :success
  end

  test "should create utilisateur_thematique" do
    assert_difference('UtilisateurThematique.count') do
      post utilisateur_thematiques_url, params: { utilisateur_thematique: { thematique_id: @utilisateur_thematique.thematique_id, utilisateur_id: @utilisateur_thematique.utilisateur_id } }
    end

    assert_redirected_to utilisateur_thematique_url(UtilisateurThematique.last)
  end

  test "should show utilisateur_thematique" do
    get utilisateur_thematique_url(@utilisateur_thematique)
    assert_response :success
  end

  test "should get edit" do
    get edit_utilisateur_thematique_url(@utilisateur_thematique)
    assert_response :success
  end

  test "should update utilisateur_thematique" do
    patch utilisateur_thematique_url(@utilisateur_thematique), params: { utilisateur_thematique: { thematique_id: @utilisateur_thematique.thematique_id, utilisateur_id: @utilisateur_thematique.utilisateur_id } }
    assert_redirected_to utilisateur_thematique_url(@utilisateur_thematique)
  end

  test "should destroy utilisateur_thematique" do
    assert_difference('UtilisateurThematique.count', -1) do
      delete utilisateur_thematique_url(@utilisateur_thematique)
    end

    assert_redirected_to utilisateur_thematiques_url
  end
end
