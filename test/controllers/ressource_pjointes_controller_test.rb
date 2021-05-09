require "test_helper"

class RessourcePjointesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ressource_pjointe = ressource_pjointes(:one)
  end

  test "should get index" do
    get ressource_pjointes_url
    assert_response :success
  end

  test "should get new" do
    get new_ressource_pjointe_url
    assert_response :success
  end

  test "should create ressource_pjointe" do
    assert_difference('RessourcePjointe.count') do
      post ressource_pjointes_url, params: { ressource_pjointe: { pjointe_id: @ressource_pjointe.pjointe_id, ressource_id: @ressource_pjointe.ressource_id } }
    end

    assert_redirected_to ressource_pjointe_url(RessourcePjointe.last)
  end

  test "should show ressource_pjointe" do
    get ressource_pjointe_url(@ressource_pjointe)
    assert_response :success
  end

  test "should get edit" do
    get edit_ressource_pjointe_url(@ressource_pjointe)
    assert_response :success
  end

  test "should update ressource_pjointe" do
    patch ressource_pjointe_url(@ressource_pjointe), params: { ressource_pjointe: { pjointe_id: @ressource_pjointe.pjointe_id, ressource_id: @ressource_pjointe.ressource_id } }
    assert_redirected_to ressource_pjointe_url(@ressource_pjointe)
  end

  test "should destroy ressource_pjointe" do
    assert_difference('RessourcePjointe.count', -1) do
      delete ressource_pjointe_url(@ressource_pjointe)
    end

    assert_redirected_to ressource_pjointes_url
  end
end
