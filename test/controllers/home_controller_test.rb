require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get profile" do
    get home_profile_url
    assert_response :success
  end

  test "should get category" do
    get home_category_url
    assert_response :success
  end

  test "should get work" do
    get home_work_url
    assert_response :success
  end

  test "should get contact" do
    get home_contact_url
    assert_response :success
  end

end
