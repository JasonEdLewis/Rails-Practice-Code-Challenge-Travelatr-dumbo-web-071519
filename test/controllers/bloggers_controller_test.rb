require 'test_helper'

class BloggersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bloggers_index_url
    assert_response :success
  end

  test "should get show" do
    get bloggers_show_url
    assert_response :success
  end

  test "should get new" do
    get bloggers_new_url
    assert_response :success
  end

  test "should get create" do
    get bloggers_create_url
    assert_response :success
  end

  test "should get edit" do
    get bloggers_edit_url
    assert_response :success
  end

  test "should get update" do
    get bloggers_update_url
    assert_response :success
  end

  test "should get destroy" do
    get bloggers_destroy_url
    assert_response :success
  end

  test "should get find_blogger" do
    get bloggers_find_blogger_url
    assert_response :success
  end

  test "should get blogger_params" do
    get bloggers_blogger_params_url
    assert_response :success
  end

end
