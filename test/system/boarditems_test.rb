require "application_system_test_case"

class BoarditemsTest < ApplicationSystemTestCase
  setup do
    @boarditem = boarditems(:one)
  end

  test "visiting the index" do
    visit boarditems_url
    assert_selector "h1", text: "Boarditems"
  end

  test "creating a Boarditem" do
    visit boarditems_url
    click_on "New Boarditem"

    click_on "Create Boarditem"

    assert_text "Boarditem was successfully created"
    click_on "Back"
  end

  test "updating a Boarditem" do
    visit boarditems_url
    click_on "Edit", match: :first

    click_on "Update Boarditem"

    assert_text "Boarditem was successfully updated"
    click_on "Back"
  end

  test "destroying a Boarditem" do
    visit boarditems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Boarditem was successfully destroyed"
  end
end
