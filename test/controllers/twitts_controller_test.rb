require 'test_helper'

class TwittsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get twitts_index_url
    assert_response :success
  end

  test "should get new" do
    get twitts_new_url
    assert_response :success
  end

  test "should get show" do
    get twitts_show_url
    assert_response :success
  end

  test "should get edit" do
    get twitts_edit_url
    assert_response :success
  end

end
