require 'test_helper'

class NumberControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get number_index_url
    assert_response :success
  end

  test "should get show" do
    get number_show_url
    assert_response :success
  end

end
