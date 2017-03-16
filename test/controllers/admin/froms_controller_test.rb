require 'test_helper'

class Admin::FromsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_from = admin_froms(:one)
  end

  test "should get index" do
    get admin_froms_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_from_url
    assert_response :success
  end

  test "should create admin_from" do
    assert_difference('Admin::From.count') do
      post admin_froms_url, params: { admin_from: { campaign_id: @admin_from.campaign_id, name: @admin_from.name } }
    end

    assert_redirected_to admin_from_url(Admin::From.last)
  end

  test "should show admin_from" do
    get admin_from_url(@admin_from)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_from_url(@admin_from)
    assert_response :success
  end

  test "should update admin_from" do
    patch admin_from_url(@admin_from), params: { admin_from: { campaign_id: @admin_from.campaign_id, name: @admin_from.name } }
    assert_redirected_to admin_from_url(@admin_from)
  end

  test "should destroy admin_from" do
    assert_difference('Admin::From.count', -1) do
      delete admin_from_url(@admin_from)
    end

    assert_redirected_to admin_froms_url
  end
end
