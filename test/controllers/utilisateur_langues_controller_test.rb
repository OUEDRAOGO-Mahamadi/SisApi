require "test_helper"

class UtilisateurLanguesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @utilisateur_langue = utilisateur_langues(:one)
  end

  test "should get index" do
    get utilisateur_langues_url
    assert_response :success
  end

  test "should get new" do
    get new_utilisateur_langue_url
    assert_response :success
  end

  test "should create utilisateur_langue" do
    assert_difference('UtilisateurLangue.count') do
      post utilisateur_langues_url, params: { utilisateur_langue: { langue_id: @utilisateur_langue.langue_id, utilisateur_id: @utilisateur_langue.utilisateur_id } }
    end

    assert_redirected_to utilisateur_langue_url(UtilisateurLangue.last)
  end

  test "should show utilisateur_langue" do
    get utilisateur_langue_url(@utilisateur_langue)
    assert_response :success
  end

  test "should get edit" do
    get edit_utilisateur_langue_url(@utilisateur_langue)
    assert_response :success
  end

  test "should update utilisateur_langue" do
    patch utilisateur_langue_url(@utilisateur_langue), params: { utilisateur_langue: { langue_id: @utilisateur_langue.langue_id, utilisateur_id: @utilisateur_langue.utilisateur_id } }
    assert_redirected_to utilisateur_langue_url(@utilisateur_langue)
  end

  test "should destroy utilisateur_langue" do
    assert_difference('UtilisateurLangue.count', -1) do
      delete utilisateur_langue_url(@utilisateur_langue)
    end

    assert_redirected_to utilisateur_langues_url
  end
end
