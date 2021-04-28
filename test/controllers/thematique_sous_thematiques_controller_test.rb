require "test_helper"

class ThematiqueSousThematiquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thematique_sous_thematique = thematique_sous_thematiques(:one)
  end

  test "should get index" do
    get thematique_sous_thematiques_url
    assert_response :success
  end

  test "should get new" do
    get new_thematique_sous_thematique_url
    assert_response :success
  end

  test "should create thematique_sous_thematique" do
    assert_difference('ThematiqueSousThematique.count') do
      post thematique_sous_thematiques_url, params: { thematique_sous_thematique: { sous_thematique_id: @thematique_sous_thematique.sous_thematique_id, thematique_id: @thematique_sous_thematique.thematique_id } }
    end

    assert_redirected_to thematique_sous_thematique_url(ThematiqueSousThematique.last)
  end

  test "should show thematique_sous_thematique" do
    get thematique_sous_thematique_url(@thematique_sous_thematique)
    assert_response :success
  end

  test "should get edit" do
    get edit_thematique_sous_thematique_url(@thematique_sous_thematique)
    assert_response :success
  end

  test "should update thematique_sous_thematique" do
    patch thematique_sous_thematique_url(@thematique_sous_thematique), params: { thematique_sous_thematique: { sous_thematique_id: @thematique_sous_thematique.sous_thematique_id, thematique_id: @thematique_sous_thematique.thematique_id } }
    assert_redirected_to thematique_sous_thematique_url(@thematique_sous_thematique)
  end

  test "should destroy thematique_sous_thematique" do
    assert_difference('ThematiqueSousThematique.count', -1) do
      delete thematique_sous_thematique_url(@thematique_sous_thematique)
    end

    assert_redirected_to thematique_sous_thematiques_url
  end
end
