require "application_system_test_case"

class BoardattachmentsTest < ApplicationSystemTestCase
  setup do
    @boardattachment = boardattachments(:one)
  end

  test "visiting the index" do
    visit boardattachments_url
    assert_selector "h1", text: "Boardattachments"
  end

  test "creating a Boardattachment" do
    visit boardattachments_url
    click_on "New Boardattachment"

    click_on "Create Boardattachment"

    assert_text "Boardattachment was successfully created"
    click_on "Back"
  end

  test "updating a Boardattachment" do
    visit boardattachments_url
    click_on "Edit", match: :first

    click_on "Update Boardattachment"

    assert_text "Boardattachment was successfully updated"
    click_on "Back"
  end

  test "destroying a Boardattachment" do
    visit boardattachments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Boardattachment was successfully destroyed"
  end
end
