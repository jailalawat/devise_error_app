require 'test_helper'

class TrackUrlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @track_url = track_urls(:one)
  end

  test "should get index" do
    get track_urls_url
    assert_response :success
  end

  test "should get new" do
    get new_track_url_url
    assert_response :success
  end

  test "should create track_url" do
    assert_difference('TrackUrl.count') do
      post track_urls_url, params: { track_url: { url: @track_url.url } }
    end

    assert_redirected_to track_url_url(TrackUrl.last)
  end

  test "should show track_url" do
    get track_url_url(@track_url)
    assert_response :success
  end

  test "should get edit" do
    get edit_track_url_url(@track_url)
    assert_response :success
  end

  test "should update track_url" do
    patch track_url_url(@track_url), params: { track_url: { url: @track_url.url } }
    assert_redirected_to track_url_url(@track_url)
  end

  test "should destroy track_url" do
    assert_difference('TrackUrl.count', -1) do
      delete track_url_url(@track_url)
    end

    assert_redirected_to track_urls_url
  end
end
