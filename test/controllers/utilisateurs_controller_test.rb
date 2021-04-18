require "test_helper"

class UtilisateursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @utilisateur = utilisateurs(:one)
  end

  test "should get index" do
    get utilisateurs_url
    assert_response :success
  end

  test "should get new" do
    get new_utilisateur_url
    assert_response :success
  end

  test "should create utilisateur" do
    assert_difference('Utilisateur.count') do
      post utilisateurs_url, params: { utilisateur: { categorie_id: @utilisateur.categorie_id, email: @utilisateur.email, fonction: @utilisateur.fonction, nom: @utilisateur.nom, password: @utilisateur.password, prenom: @utilisateur.prenom, profile_id: @utilisateur.profile_id, specialite_id: @utilisateur.specialite_id, status: @utilisateur.status, structure_id: @utilisateur.structure_id, telephone: @utilisateur.telephone } }
    end

    assert_redirected_to utilisateur_url(Utilisateur.last)
  end

  test "should show utilisateur" do
    get utilisateur_url(@utilisateur)
    assert_response :success
  end

  test "should get edit" do
    get edit_utilisateur_url(@utilisateur)
    assert_response :success
  end

  test "should update utilisateur" do
    patch utilisateur_url(@utilisateur), params: { utilisateur: { categorie_id: @utilisateur.categorie_id, email: @utilisateur.email, fonction: @utilisateur.fonction, nom: @utilisateur.nom, password: @utilisateur.password, prenom: @utilisateur.prenom, profile_id: @utilisateur.profile_id, specialite_id: @utilisateur.specialite_id, status: @utilisateur.status, structure_id: @utilisateur.structure_id, telephone: @utilisateur.telephone } }
    assert_redirected_to utilisateur_url(@utilisateur)
  end

  test "should destroy utilisateur" do
    assert_difference('Utilisateur.count', -1) do
      delete utilisateur_url(@utilisateur)
    end

    assert_redirected_to utilisateurs_url
  end
end
