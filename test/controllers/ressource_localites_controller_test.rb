require "test_helper"

class RessourceLocalitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ressource_localite = ressource_localites(:one)
  end

  test "should get index" do
    get ressource_localites_url
    assert_response :success
  end

  test "should get new" do
    get new_ressource_localite_url
    assert_response :success
  end

  test "should create ressource_localite" do
    assert_difference('RessourceLocalite.count') do
      post ressource_localites_url, params: { ressource_localite: { ressource_id: @ressource_localite.ressource_id, sous_localite_id: @ressource_localite.sous_localite_id } }
    end

    assert_redirected_to ressource_localite_url(RessourceLocalite.last)
  end

  test "should show ressource_localite" do
    get ressource_localite_url(@ressource_localite)
    assert_response :success
  end

  test "should get edit" do
    get edit_ressource_localite_url(@ressource_localite)
    assert_response :success
  end

  test "should update ressource_localite" do
    patch ressource_localite_url(@ressource_localite), params: { ressource_localite: { ressource_id: @ressource_localite.ressource_id, sous_localite_id: @ressource_localite.sous_localite_id } }
    assert_redirected_to ressource_localite_url(@ressource_localite)
  end

  test "should destroy ressource_localite" do
    assert_difference('RessourceLocalite.count', -1) do
      delete ressource_localite_url(@ressource_localite)
    end

    assert_redirected_to ressource_localites_url
  end
end
