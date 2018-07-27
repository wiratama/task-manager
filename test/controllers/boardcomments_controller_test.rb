require 'test_helper'

class BoardcommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boardcomment = boardcomments(:one)
  end

  test "should get index" do
    get boardcomments_url
    assert_response :success
  end

  test "should get new" do
    get new_boardcomment_url
    assert_response :success
  end

  test "should create boardcomment" do
    assert_difference('Boardcomment.count') do
      post boardcomments_url, params: { boardcomment: {  } }
    end

    assert_redirected_to boardcomment_url(Boardcomment.last)
  end

  test "should show boardcomment" do
    get boardcomment_url(@boardcomment)
    assert_response :success
  end

  test "should get edit" do
    get edit_boardcomment_url(@boardcomment)
    assert_response :success
  end

  test "should update boardcomment" do
    patch boardcomment_url(@boardcomment), params: { boardcomment: {  } }
    assert_redirected_to boardcomment_url(@boardcomment)
  end

  test "should destroy boardcomment" do
    assert_difference('Boardcomment.count', -1) do
      delete boardcomment_url(@boardcomment)
    end

    assert_redirected_to boardcomments_url
  end
end
