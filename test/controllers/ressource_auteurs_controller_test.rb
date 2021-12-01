require "test_helper"

class RessourceAuteursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ressource_auteur = ressource_auteurs(:one)
  end

  test "should get index" do
    get ressource_auteurs_url
    assert_response :success
  end

  test "should get new" do
    get new_ressource_auteur_url
    assert_response :success
  end

  test "should create ressource_auteur" do
    assert_difference('RessourceAuteur.count') do
      post ressource_auteurs_url, params: { ressource_auteur: { auteur_id: @ressource_auteur.auteur_id, ressource_id: @ressource_auteur.ressource_id } }
    end

    assert_redirected_to ressource_auteur_url(RessourceAuteur.last)
  end

  test "should show ressource_auteur" do
    get ressource_auteur_url(@ressource_auteur)
    assert_response :success
  end

  test "should get edit" do
    get edit_ressource_auteur_url(@ressource_auteur)
    assert_response :success
  end

  test "should update ressource_auteur" do
    patch ressource_auteur_url(@ressource_auteur), params: { ressource_auteur: { auteur_id: @ressource_auteur.auteur_id, ressource_id: @ressource_auteur.ressource_id } }
    assert_redirected_to ressource_auteur_url(@ressource_auteur)
  end

  test "should destroy ressource_auteur" do
    assert_difference('RessourceAuteur.count', -1) do
      delete ressource_auteur_url(@ressource_auteur)
    end

    assert_redirected_to ressource_auteurs_url
  end
end
