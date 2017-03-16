require 'test_helper'

class TrackingInfoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tracking_info_index_url
    assert_response :success
  end

end
