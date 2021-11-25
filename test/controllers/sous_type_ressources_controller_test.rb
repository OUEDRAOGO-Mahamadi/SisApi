require "test_helper"

class SousTypeRessourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sous_type_ressource = sous_type_ressources(:one)
  end

  test "should get index" do
    get sous_type_ressources_url
    assert_response :success
  end

  test "should get new" do
    get new_sous_type_ressource_url
    assert_response :success
  end

  test "should create sous_type_ressource" do
    assert_difference('SousTypeRessource.count') do
      post sous_type_ressources_url, params: { sous_type_ressource: { description: @sous_type_ressource.description, libelle: @sous_type_ressource.libelle, sigle: @sous_type_ressource.sigle } }
    end

    assert_redirected_to sous_type_ressource_url(SousTypeRessource.last)
  end

  test "should show sous_type_ressource" do
    get sous_type_ressource_url(@sous_type_ressource)
    assert_response :success
  end

  test "should get edit" do
    get edit_sous_type_ressource_url(@sous_type_ressource)
    assert_response :success
  end

  test "should update sous_type_ressource" do
    patch sous_type_ressource_url(@sous_type_ressource), params: { sous_type_ressource: { description: @sous_type_ressource.description, libelle: @sous_type_ressource.libelle, sigle: @sous_type_ressource.sigle } }
    assert_redirected_to sous_type_ressource_url(@sous_type_ressource)
  end

  test "should destroy sous_type_ressource" do
    assert_difference('SousTypeRessource.count', -1) do
      delete sous_type_ressource_url(@sous_type_ressource)
    end

    assert_redirected_to sous_type_ressources_url
  end
end
