require "test_helper"

class RessourceSousRessourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ressource_sous_ressource = ressource_sous_ressources(:one)
  end

  test "should get index" do
    get ressource_sous_ressources_url
    assert_response :success
  end

  test "should get new" do
    get new_ressource_sous_ressource_url
    assert_response :success
  end

  test "should create ressource_sous_ressource" do
    assert_difference('RessourceSousRessource.count') do
      post ressource_sous_ressources_url, params: { ressource_sous_ressource: { ressource_id: @ressource_sous_ressource.ressource_id, sous_type_ressource_id: @ressource_sous_ressource.sous_type_ressource_id } }
    end

    assert_redirected_to ressource_sous_ressource_url(RessourceSousRessource.last)
  end

  test "should show ressource_sous_ressource" do
    get ressource_sous_ressource_url(@ressource_sous_ressource)
    assert_response :success
  end

  test "should get edit" do
    get edit_ressource_sous_ressource_url(@ressource_sous_ressource)
    assert_response :success
  end

  test "should update ressource_sous_ressource" do
    patch ressource_sous_ressource_url(@ressource_sous_ressource), params: { ressource_sous_ressource: { ressource_id: @ressource_sous_ressource.ressource_id, sous_type_ressource_id: @ressource_sous_ressource.sous_type_ressource_id } }
    assert_redirected_to ressource_sous_ressource_url(@ressource_sous_ressource)
  end

  test "should destroy ressource_sous_ressource" do
    assert_difference('RessourceSousRessource.count', -1) do
      delete ressource_sous_ressource_url(@ressource_sous_ressource)
    end

    assert_redirected_to ressource_sous_ressources_url
  end
end
