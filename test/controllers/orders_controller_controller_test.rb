require 'test_helper'

class OrdersControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get orders_controller_index_url
    assert_response :success
  end

  test "should get show" do
    get orders_controller_show_url
    assert_response :success
  end

  test "should get edit" do
    get orders_controller_edit_url
    assert_response :success
  end

  test "should get create" do
    get orders_controller_create_url
    assert_response :success
  end

  test "should get destroy" do
    get orders_controller_destroy_url
    assert_response :success
  end

  test "should get new" do
    get orders_controller_new_url
    assert_response :success
  end

  test "should get update" do
    get orders_controller_update_url
    assert_response :success
  end

end
