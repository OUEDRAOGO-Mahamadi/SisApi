require "test_helper"

class FormatRessourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @format_ressource = format_ressources(:one)
  end

  test "should get index" do
    get format_ressources_url
    assert_response :success
  end

  test "should get new" do
    get new_format_ressource_url
    assert_response :success
  end

  test "should create format_ressource" do
    assert_difference('FormatRessource.count') do
      post format_ressources_url, params: { format_ressource: { code: @format_ressource.code, libelle: @format_ressource.libelle } }
    end

    assert_redirected_to format_ressource_url(FormatRessource.last)
  end

  test "should show format_ressource" do
    get format_ressource_url(@format_ressource)
    assert_response :success
  end

  test "should get edit" do
    get edit_format_ressource_url(@format_ressource)
    assert_response :success
  end

  test "should update format_ressource" do
    patch format_ressource_url(@format_ressource), params: { format_ressource: { code: @format_ressource.code, libelle: @format_ressource.libelle } }
    assert_redirected_to format_ressource_url(@format_ressource)
  end

  test "should destroy format_ressource" do
    assert_difference('FormatRessource.count', -1) do
      delete format_ressource_url(@format_ressource)
    end

    assert_redirected_to format_ressources_url
  end
end
