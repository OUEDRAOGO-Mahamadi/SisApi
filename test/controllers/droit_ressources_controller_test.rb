require "test_helper"

class DroitRessourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @droit_ressource = droit_ressources(:one)
  end

  test "should get index" do
    get droit_ressources_url
    assert_response :success
  end

  test "should get new" do
    get new_droit_ressource_url
    assert_response :success
  end

  test "should create droit_ressource" do
    assert_difference('DroitRessource.count') do
      post droit_ressources_url, params: { droit_ressource: { creer: @droit_ressource.creer, libelle: @droit_ressource.libelle, lire: @droit_ressource.lire, modifier: @droit_ressource.modifier, supprimer: @droit_ressource.supprimer } }
    end

    assert_redirected_to droit_ressource_url(DroitRessource.last)
  end

  test "should show droit_ressource" do
    get droit_ressource_url(@droit_ressource)
    assert_response :success
  end

  test "should get edit" do
    get edit_droit_ressource_url(@droit_ressource)
    assert_response :success
  end

  test "should update droit_ressource" do
    patch droit_ressource_url(@droit_ressource), params: { droit_ressource: { creer: @droit_ressource.creer, libelle: @droit_ressource.libelle, lire: @droit_ressource.lire, modifier: @droit_ressource.modifier, supprimer: @droit_ressource.supprimer } }
    assert_redirected_to droit_ressource_url(@droit_ressource)
  end

  test "should destroy droit_ressource" do
    assert_difference('DroitRessource.count', -1) do
      delete droit_ressource_url(@droit_ressource)
    end

    assert_redirected_to droit_ressources_url
  end
end
