require "test_helper"

class ThematiquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thematique = thematiques(:one)
  end

  test "should get index" do
    get thematiques_url
    assert_response :success
  end

  test "should get new" do
    get new_thematique_url
    assert_response :success
  end

  test "should create thematique" do
    assert_difference('Thematique.count') do
      post thematiques_url, params: { thematique: { description: @thematique.description, libelle: @thematique.libelle, thematique_id: @thematique.thematique_id } }
    end

    assert_redirected_to thematique_url(Thematique.last)
  end

  test "should show thematique" do
    get thematique_url(@thematique)
    assert_response :success
  end

  test "should get edit" do
    get edit_thematique_url(@thematique)
    assert_response :success
  end

  test "should update thematique" do
    patch thematique_url(@thematique), params: { thematique: { description: @thematique.description, libelle: @thematique.libelle, thematique_id: @thematique.thematique_id } }
    assert_redirected_to thematique_url(@thematique)
  end

  test "should destroy thematique" do
    assert_difference('Thematique.count', -1) do
      delete thematique_url(@thematique)
    end

    assert_redirected_to thematiques_url
  end
end
