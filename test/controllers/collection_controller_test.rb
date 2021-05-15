require 'test_helper'

class CollectionControllerTest < ActionDispatch::IntegrationTest
  test "should get women" do
    get women_path
    assert_response :success
  end

  test "should get men" do
    get men_path
    assert_response :success
  end

  test "should get kids" do
    get kids_path
    assert_response :success
  end

  test "should get new_arrivals" do
    get new_arrivals_path
    assert_response :success
  end

end
