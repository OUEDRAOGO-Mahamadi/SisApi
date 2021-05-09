require "test_helper"

class LocalitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @localite = localites(:one)
  end

  test "should get index" do
    get localites_url
    assert_response :success
  end

  test "should get new" do
    get new_localite_url
    assert_response :success
  end

  test "should create localite" do
    assert_difference('Localite.count') do
      post localites_url, params: { localite: { nom: @localite.nom, type: @localite.type } }
    end

    assert_redirected_to localite_url(Localite.last)
  end

  test "should show localite" do
    get localite_url(@localite)
    assert_response :success
  end

  test "should get edit" do
    get edit_localite_url(@localite)
    assert_response :success
  end

  test "should update localite" do
    patch localite_url(@localite), params: { localite: { nom: @localite.nom, type: @localite.type } }
    assert_redirected_to localite_url(@localite)
  end

  test "should destroy localite" do
    assert_difference('Localite.count', -1) do
      delete localite_url(@localite)
    end

    assert_redirected_to localites_url
  end
end
