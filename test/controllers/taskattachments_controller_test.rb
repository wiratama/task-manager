require 'test_helper'

class TaskattachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @taskattachment = taskattachments(:one)
  end

  test "should get index" do
    get taskattachments_url
    assert_response :success
  end

  test "should get new" do
    get new_taskattachment_url
    assert_response :success
  end

  test "should create taskattachment" do
    assert_difference('Taskattachment.count') do
      post taskattachments_url, params: { taskattachment: {  } }
    end

    assert_redirected_to taskattachment_url(Taskattachment.last)
  end

  test "should show taskattachment" do
    get taskattachment_url(@taskattachment)
    assert_response :success
  end

  test "should get edit" do
    get edit_taskattachment_url(@taskattachment)
    assert_response :success
  end

  test "should update taskattachment" do
    patch taskattachment_url(@taskattachment), params: { taskattachment: {  } }
    assert_redirected_to taskattachment_url(@taskattachment)
  end

  test "should destroy taskattachment" do
    assert_difference('Taskattachment.count', -1) do
      delete taskattachment_url(@taskattachment)
    end

    assert_redirected_to taskattachments_url
  end
end
