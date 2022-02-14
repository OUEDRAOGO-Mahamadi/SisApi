require "test_helper"

class DroitEvenementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @droit_evenement = droit_evenements(:one)
  end

  test "should get index" do
    get droit_evenements_url
    assert_response :success
  end

  test "should get new" do
    get new_droit_evenement_url
    assert_response :success
  end

  test "should create droit_evenement" do
    assert_difference('DroitEvenement.count') do
      post droit_evenements_url, params: { droit_evenement: { creer: @droit_evenement.creer, libelle: @droit_evenement.libelle, lire: @droit_evenement.lire, modifier: @droit_evenement.modifier, supprimer: @droit_evenement.supprimer } }
    end

    assert_redirected_to droit_evenement_url(DroitEvenement.last)
  end

  test "should show droit_evenement" do
    get droit_evenement_url(@droit_evenement)
    assert_response :success
  end

  test "should get edit" do
    get edit_droit_evenement_url(@droit_evenement)
    assert_response :success
  end

  test "should update droit_evenement" do
    patch droit_evenement_url(@droit_evenement), params: { droit_evenement: { creer: @droit_evenement.creer, libelle: @droit_evenement.libelle, lire: @droit_evenement.lire, modifier: @droit_evenement.modifier, supprimer: @droit_evenement.supprimer } }
    assert_redirected_to droit_evenement_url(@droit_evenement)
  end

  test "should destroy droit_evenement" do
    assert_difference('DroitEvenement.count', -1) do
      delete droit_evenement_url(@droit_evenement)
    end

    assert_redirected_to droit_evenements_url
  end
end
