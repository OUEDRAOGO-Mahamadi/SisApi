require "test_helper"

class RessourceVotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ressource_vote = ressource_votes(:one)
  end

  test "should get index" do
    get ressource_votes_url
    assert_response :success
  end

  test "should get new" do
    get new_ressource_vote_url
    assert_response :success
  end

  test "should create ressource_vote" do
    assert_difference('RessourceVote.count') do
      post ressource_votes_url, params: { ressource_vote: { ressource_id: @ressource_vote.ressource_id, vote_id: @ressource_vote.vote_id } }
    end

    assert_redirected_to ressource_vote_url(RessourceVote.last)
  end

  test "should show ressource_vote" do
    get ressource_vote_url(@ressource_vote)
    assert_response :success
  end

  test "should get edit" do
    get edit_ressource_vote_url(@ressource_vote)
    assert_response :success
  end

  test "should update ressource_vote" do
    patch ressource_vote_url(@ressource_vote), params: { ressource_vote: { ressource_id: @ressource_vote.ressource_id, vote_id: @ressource_vote.vote_id } }
    assert_redirected_to ressource_vote_url(@ressource_vote)
  end

  test "should destroy ressource_vote" do
    assert_difference('RessourceVote.count', -1) do
      delete ressource_vote_url(@ressource_vote)
    end

    assert_redirected_to ressource_votes_url
  end
end
