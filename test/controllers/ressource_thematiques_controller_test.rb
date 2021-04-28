require "test_helper"

class RessourceThematiquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ressource_thematique = ressource_thematiques(:one)
  end

  test "should get index" do
    get ressource_thematiques_url
    assert_response :success
  end

  test "should get new" do
    get new_ressource_thematique_url
    assert_response :success
  end

  test "should create ressource_thematique" do
    assert_difference('RessourceThematique.count') do
      post ressource_thematiques_url, params: { ressource_thematique: { ressource_id: @ressource_thematique.ressource_id, thematique_id: @ressource_thematique.thematique_id } }
    end

    assert_redirected_to ressource_thematique_url(RessourceThematique.last)
  end

  test "should show ressource_thematique" do
    get ressource_thematique_url(@ressource_thematique)
    assert_response :success
  end

  test "should get edit" do
    get edit_ressource_thematique_url(@ressource_thematique)
    assert_response :success
  end

  test "should update ressource_thematique" do
    patch ressource_thematique_url(@ressource_thematique), params: { ressource_thematique: { ressource_id: @ressource_thematique.ressource_id, thematique_id: @ressource_thematique.thematique_id } }
    assert_redirected_to ressource_thematique_url(@ressource_thematique)
  end

  test "should destroy ressource_thematique" do
    assert_difference('RessourceThematique.count', -1) do
      delete ressource_thematique_url(@ressource_thematique)
    end

    assert_redirected_to ressource_thematiques_url
  end
end
