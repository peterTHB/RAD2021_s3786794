require 'test_helper'

class FashionControllerTest < ActionDispatch::IntegrationTest
  test "should move right carousel" do
    post fashion_moveForward_path
    assert_response :success
  end

  test "should move left carousel" do
    post fashion_moveBackward_path
    assert_response :success
  end
end
