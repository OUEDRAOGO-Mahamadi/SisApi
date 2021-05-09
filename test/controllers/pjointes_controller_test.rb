require "test_helper"

class PjointesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pjointe = pjointes(:one)
  end

  test "should get index" do
    get pjointes_url
    assert_response :success
  end

  test "should get new" do
    get new_pjointe_url
    assert_response :success
  end

  test "should create pjointe" do
    assert_difference('Pjointe.count') do
      post pjointes_url, params: { pjointe: { file: @pjointe.file } }
    end

    assert_redirected_to pjointe_url(Pjointe.last)
  end

  test "should show pjointe" do
    get pjointe_url(@pjointe)
    assert_response :success
  end

  test "should get edit" do
    get edit_pjointe_url(@pjointe)
    assert_response :success
  end

  test "should update pjointe" do
    patch pjointe_url(@pjointe), params: { pjointe: { file: @pjointe.file } }
    assert_redirected_to pjointe_url(@pjointe)
  end

  test "should destroy pjointe" do
    assert_difference('Pjointe.count', -1) do
      delete pjointe_url(@pjointe)
    end

    assert_redirected_to pjointes_url
  end
end
