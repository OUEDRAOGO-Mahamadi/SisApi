require "test_helper"

class PaysRegionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pays_region = pays_regions(:one)
  end

  test "should get index" do
    get pays_regions_url
    assert_response :success
  end

  test "should get new" do
    get new_pays_region_url
    assert_response :success
  end

  test "should create pays_region" do
    assert_difference('PaysRegion.count') do
      post pays_regions_url, params: { pays_region: { pays_id: @pays_region.pays_id, region_id: @pays_region.region_id } }
    end

    assert_redirected_to pays_region_url(PaysRegion.last)
  end

  test "should show pays_region" do
    get pays_region_url(@pays_region)
    assert_response :success
  end

  test "should get edit" do
    get edit_pays_region_url(@pays_region)
    assert_response :success
  end

  test "should update pays_region" do
    patch pays_region_url(@pays_region), params: { pays_region: { pays_id: @pays_region.pays_id, region_id: @pays_region.region_id } }
    assert_redirected_to pays_region_url(@pays_region)
  end

  test "should destroy pays_region" do
    assert_difference('PaysRegion.count', -1) do
      delete pays_region_url(@pays_region)
    end

    assert_redirected_to pays_regions_url
  end
end
