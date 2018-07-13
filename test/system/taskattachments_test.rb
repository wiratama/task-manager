require "application_system_test_case"

class TaskattachmentsTest < ApplicationSystemTestCase
  setup do
    @taskattachment = taskattachments(:one)
  end

  test "visiting the index" do
    visit taskattachments_url
    assert_selector "h1", text: "Taskattachments"
  end

  test "creating a Taskattachment" do
    visit taskattachments_url
    click_on "New Taskattachment"

    click_on "Create Taskattachment"

    assert_text "Taskattachment was successfully created"
    click_on "Back"
  end

  test "updating a Taskattachment" do
    visit taskattachments_url
    click_on "Edit", match: :first

    click_on "Update Taskattachment"

    assert_text "Taskattachment was successfully updated"
    click_on "Back"
  end

  test "destroying a Taskattachment" do
    visit taskattachments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Taskattachment was successfully destroyed"
  end
end
