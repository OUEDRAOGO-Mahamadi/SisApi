require "test_helper"

class LocaliteLocalitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @localite_localite = localite_localites(:one)
  end

  test "should get index" do
    get localite_localites_url
    assert_response :success
  end

  test "should get new" do
    get new_localite_localite_url
    assert_response :success
  end

  test "should create localite_localite" do
    assert_difference('LocaliteLocalite.count') do
      post localite_localites_url, params: { localite_localite: { localite_id: @localite_localite.localite_id, sous_localite_id: @localite_localite.sous_localite_id } }
    end

    assert_redirected_to localite_localite_url(LocaliteLocalite.last)
  end

  test "should show localite_localite" do
    get localite_localite_url(@localite_localite)
    assert_response :success
  end

  test "should get edit" do
    get edit_localite_localite_url(@localite_localite)
    assert_response :success
  end

  test "should update localite_localite" do
    patch localite_localite_url(@localite_localite), params: { localite_localite: { localite_id: @localite_localite.localite_id, sous_localite_id: @localite_localite.sous_localite_id } }
    assert_redirected_to localite_localite_url(@localite_localite)
  end

  test "should destroy localite_localite" do
    assert_difference('LocaliteLocalite.count', -1) do
      delete localite_localite_url(@localite_localite)
    end

    assert_redirected_to localite_localites_url
  end
end
