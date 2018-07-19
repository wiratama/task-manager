require "application_system_test_case"

class FirmsTest < ApplicationSystemTestCase
  setup do
    @firm = firms(:one)
  end

  test "visiting the index" do
    visit firms_url
    assert_selector "h1", text: "Firms"
  end

  test "creating a Firm" do
    visit firms_url
    click_on "New Firm"

    click_on "Create Firm"

    assert_text "Firm was successfully created"
    click_on "Back"
  end

  test "updating a Firm" do
    visit firms_url
    click_on "Edit", match: :first

    click_on "Update Firm"

    assert_text "Firm was successfully updated"
    click_on "Back"
  end

  test "destroying a Firm" do
    visit firms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Firm was successfully destroyed"
  end
end
