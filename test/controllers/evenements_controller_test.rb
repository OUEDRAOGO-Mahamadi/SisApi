require "test_helper"

class EvenementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evenement = evenements(:one)
  end

  test "should get index" do
    get evenements_url
    assert_response :success
  end

  test "should get new" do
    get new_evenement_url
    assert_response :success
  end

  test "should create evenement" do
    assert_difference('Evenement.count') do
      post evenements_url, params: { evenement: { cible: @evenement.cible, date_debut: @evenement.date_debut, date_fin: @evenement.date_fin, description: @evenement.description, heure_debut: @evenement.heure_debut, heure_fin: @evenement.heure_fin, libelle: @evenement.libelle, lieu: @evenement.lieu, objectif: @evenement.objectif, organisateur: @evenement.organisateur, profile_id: @evenement.profile_id, thematique_id: @evenement.thematique_id, type_evenement_id: @evenement.type_evenement_id, type_systeme_irrigue_id: @evenement.type_systeme_irrigue_id, unite_administrative_id: @evenement.unite_administrative_id, url: @evenement.url } }
    end

    assert_redirected_to evenement_url(Evenement.last)
  end

  test "should show evenement" do
    get evenement_url(@evenement)
    assert_response :success
  end

  test "should get edit" do
    get edit_evenement_url(@evenement)
    assert_response :success
  end

  test "should update evenement" do
    patch evenement_url(@evenement), params: { evenement: { cible: @evenement.cible, date_debut: @evenement.date_debut, date_fin: @evenement.date_fin, description: @evenement.description, heure_debut: @evenement.heure_debut, heure_fin: @evenement.heure_fin, libelle: @evenement.libelle, lieu: @evenement.lieu, objectif: @evenement.objectif, organisateur: @evenement.organisateur, profile_id: @evenement.profile_id, thematique_id: @evenement.thematique_id, type_evenement_id: @evenement.type_evenement_id, type_systeme_irrigue_id: @evenement.type_systeme_irrigue_id, unite_administrative_id: @evenement.unite_administrative_id, url: @evenement.url } }
    assert_redirected_to evenement_url(@evenement)
  end

  test "should destroy evenement" do
    assert_difference('Evenement.count', -1) do
      delete evenement_url(@evenement)
    end

    assert_redirected_to evenements_url
  end
end
