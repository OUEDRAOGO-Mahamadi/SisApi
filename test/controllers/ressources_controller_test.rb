require "test_helper"

class RessourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ressource = ressources(:one)
  end

  test "should get index" do
    get ressources_url
    assert_response :success
  end

  test "should get new" do
    get new_ressource_url
    assert_response :success
  end

  test "should create ressource" do
    assert_difference('Ressource.count') do
      post ressources_url, params: { ressource: { date_creation: @ressource.date_creation, date_debut_publication: @ressource.date_debut_publication, date_fin_publication: @ressource.date_fin_publication, derniere_date_maj: @ressource.derniere_date_maj, description: @ressource.description, format_id: @ressource.format_id, image: @ressource.image, langue_id: @ressource.langue_id, mot_cle_id: @ressource.mot_cle_id, nom: @ressource.nom, profile_id: @ressource.profile_id, statut: @ressource.statut, thematique_id: @ressource.thematique_id, type_ressource_id: @ressource.type_ressource_id, type_systeme_irrigue_id: @ressource.type_systeme_irrigue_id, unite_administrative_id: @ressource.unite_administrative_id, url: @ressource.url, utilisateur_id: @ressource.utilisateur_id, video: @ressource.video } }
    end

    assert_redirected_to ressource_url(Ressource.last)
  end

  test "should show ressource" do
    get ressource_url(@ressource)
    assert_response :success
  end

  test "should get edit" do
    get edit_ressource_url(@ressource)
    assert_response :success
  end

  test "should update ressource" do
    patch ressource_url(@ressource), params: { ressource: { date_creation: @ressource.date_creation, date_debut_publication: @ressource.date_debut_publication, date_fin_publication: @ressource.date_fin_publication, derniere_date_maj: @ressource.derniere_date_maj, description: @ressource.description, format_id: @ressource.format_id, image: @ressource.image, langue_id: @ressource.langue_id, mot_cle_id: @ressource.mot_cle_id, nom: @ressource.nom, profile_id: @ressource.profile_id, statut: @ressource.statut, thematique_id: @ressource.thematique_id, type_ressource_id: @ressource.type_ressource_id, type_systeme_irrigue_id: @ressource.type_systeme_irrigue_id, unite_administrative_id: @ressource.unite_administrative_id, url: @ressource.url, utilisateur_id: @ressource.utilisateur_id, video: @ressource.video } }
    assert_redirected_to ressource_url(@ressource)
  end

  test "should destroy ressource" do
    assert_difference('Ressource.count', -1) do
      delete ressource_url(@ressource)
    end

    assert_redirected_to ressources_url
  end
end
