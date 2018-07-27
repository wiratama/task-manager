require 'test_helper'

class BoardattachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boardattachment = boardattachments(:one)
  end

  test "should get index" do
    get boardattachments_url
    assert_response :success
  end

  test "should get new" do
    get new_boardattachment_url
    assert_response :success
  end

  test "should create boardattachment" do
    assert_difference('Boardattachment.count') do
      post boardattachments_url, params: { boardattachment: {  } }
    end

    assert_redirected_to boardattachment_url(Boardattachment.last)
  end

  test "should show boardattachment" do
    get boardattachment_url(@boardattachment)
    assert_response :success
  end

  test "should get edit" do
    get edit_boardattachment_url(@boardattachment)
    assert_response :success
  end

  test "should update boardattachment" do
    patch boardattachment_url(@boardattachment), params: { boardattachment: {  } }
    assert_redirected_to boardattachment_url(@boardattachment)
  end

  test "should destroy boardattachment" do
    assert_difference('Boardattachment.count', -1) do
      delete boardattachment_url(@boardattachment)
    end

    assert_redirected_to boardattachments_url
  end
end
