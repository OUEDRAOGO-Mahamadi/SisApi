require "application_system_test_case"

class RessourceVotesTest < ApplicationSystemTestCase
  setup do
    @ressource_vote = ressource_votes(:one)
  end

  test "visiting the index" do
    visit ressource_votes_url
    assert_selector "h1", text: "Ressource Votes"
  end

  test "creating a Ressource vote" do
    visit ressource_votes_url
    click_on "New Ressource Vote"

    fill_in "Ressource", with: @ressource_vote.ressource_id
    fill_in "Vote", with: @ressource_vote.vote_id
    click_on "Create Ressource vote"

    assert_text "Ressource vote was successfully created"
    click_on "Back"
  end

  test "updating a Ressource vote" do
    visit ressource_votes_url
    click_on "Edit", match: :first

    fill_in "Ressource", with: @ressource_vote.ressource_id
    fill_in "Vote", with: @ressource_vote.vote_id
    click_on "Update Ressource vote"

    assert_text "Ressource vote was successfully updated"
    click_on "Back"
  end

  test "destroying a Ressource vote" do
    visit ressource_votes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ressource vote was successfully destroyed"
  end
end
