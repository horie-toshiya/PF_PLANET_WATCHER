require 'test_helper'

class Public::MainContentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_main_contents_index_url
    assert_response :success
  end

  test "should get show" do
    get public_main_contents_show_url
    assert_response :success
  end

end
