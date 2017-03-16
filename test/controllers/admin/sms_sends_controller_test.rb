require 'test_helper'

class Admin::SmsSendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_sms_send = admin_sms_sends(:one)
  end

  test "should get index" do
    get admin_sms_sends_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_sms_send_url
    assert_response :success
  end

  test "should create admin_sms_send" do
    assert_difference('Admin::SmsSend.count') do
      post admin_sms_sends_url, params: { admin_sms_send: { campaign_id: @admin_sms_send.campaign_id, message: @admin_sms_send.message, message_uuid: @admin_sms_send.message_uuid } }
    end

    assert_redirected_to admin_sms_send_url(Admin::SmsSend.last)
  end

  test "should show admin_sms_send" do
    get admin_sms_send_url(@admin_sms_send)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_sms_send_url(@admin_sms_send)
    assert_response :success
  end

  test "should update admin_sms_send" do
    patch admin_sms_send_url(@admin_sms_send), params: { admin_sms_send: { campaign_id: @admin_sms_send.campaign_id, message: @admin_sms_send.message, message_uuid: @admin_sms_send.message_uuid } }
    assert_redirected_to admin_sms_send_url(@admin_sms_send)
  end

  test "should destroy admin_sms_send" do
    assert_difference('Admin::SmsSend.count', -1) do
      delete admin_sms_send_url(@admin_sms_send)
    end

    assert_redirected_to admin_sms_sends_url
  end
end
