require "test_helper"

class RegionLocalitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @region_localite = region_localites(:one)
  end

  test "should get index" do
    get region_localites_url
    assert_response :success
  end

  test "should get new" do
    get new_region_localite_url
    assert_response :success
  end

  test "should create region_localite" do
    assert_difference('RegionLocalite.count') do
      post region_localites_url, params: { region_localite: { localite_id: @region_localite.localite_id, region_id: @region_localite.region_id } }
    end

    assert_redirected_to region_localite_url(RegionLocalite.last)
  end

  test "should show region_localite" do
    get region_localite_url(@region_localite)
    assert_response :success
  end

  test "should get edit" do
    get edit_region_localite_url(@region_localite)
    assert_response :success
  end

  test "should update region_localite" do
    patch region_localite_url(@region_localite), params: { region_localite: { localite_id: @region_localite.localite_id, region_id: @region_localite.region_id } }
    assert_redirected_to region_localite_url(@region_localite)
  end

  test "should destroy region_localite" do
    assert_difference('RegionLocalite.count', -1) do
      delete region_localite_url(@region_localite)
    end

    assert_redirected_to region_localites_url
  end
end
