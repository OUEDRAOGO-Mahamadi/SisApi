require "test_helper"

class TypeRessourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_ressource = type_ressources(:one)
  end

  test "should get index" do
    get type_ressources_url
    assert_response :success
  end

  test "should get new" do
    get new_type_ressource_url
    assert_response :success
  end

  test "should create type_ressource" do
    assert_difference('TypeRessource.count') do
      post type_ressources_url, params: { type_ressource: { description: @type_ressource.description, libelle: @type_ressource.libelle, sigle: @type_ressource.sigle } }
    end

    assert_redirected_to type_ressource_url(TypeRessource.last)
  end

  test "should show type_ressource" do
    get type_ressource_url(@type_ressource)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_ressource_url(@type_ressource)
    assert_response :success
  end

  test "should update type_ressource" do
    patch type_ressource_url(@type_ressource), params: { type_ressource: { description: @type_ressource.description, libelle: @type_ressource.libelle, sigle: @type_ressource.sigle } }
    assert_redirected_to type_ressource_url(@type_ressource)
  end

  test "should destroy type_ressource" do
    assert_difference('TypeRessource.count', -1) do
      delete type_ressource_url(@type_ressource)
    end

    assert_redirected_to type_ressources_url
  end
end
