require "application_system_test_case"

class BoardcommentsTest < ApplicationSystemTestCase
  setup do
    @boardcomment = boardcomments(:one)
  end

  test "visiting the index" do
    visit boardcomments_url
    assert_selector "h1", text: "Boardcomments"
  end

  test "creating a Boardcomment" do
    visit boardcomments_url
    click_on "New Boardcomment"

    click_on "Create Boardcomment"

    assert_text "Boardcomment was successfully created"
    click_on "Back"
  end

  test "updating a Boardcomment" do
    visit boardcomments_url
    click_on "Edit", match: :first

    click_on "Update Boardcomment"

    assert_text "Boardcomment was successfully updated"
    click_on "Back"
  end

  test "destroying a Boardcomment" do
    visit boardcomments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Boardcomment was successfully destroyed"
  end
end
