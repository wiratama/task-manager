require 'test_helper'

class BoarditemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boarditem = boarditems(:one)
  end

  test "should get index" do
    get boarditems_url
    assert_response :success
  end

  test "should get new" do
    get new_boarditem_url
    assert_response :success
  end

  test "should create boarditem" do
    assert_difference('Boarditem.count') do
      post boarditems_url, params: { boarditem: {  } }
    end

    assert_redirected_to boarditem_url(Boarditem.last)
  end

  test "should show boarditem" do
    get boarditem_url(@boarditem)
    assert_response :success
  end

  test "should get edit" do
    get edit_boarditem_url(@boarditem)
    assert_response :success
  end

  test "should update boarditem" do
    patch boarditem_url(@boarditem), params: { boarditem: {  } }
    assert_redirected_to boarditem_url(@boarditem)
  end

  test "should destroy boarditem" do
    assert_difference('Boarditem.count', -1) do
      delete boarditem_url(@boarditem)
    end

    assert_redirected_to boarditems_url
  end
end
