require 'test_helper'

class YoutubersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get youtubers_new_url
    assert_response :success
  end

end
