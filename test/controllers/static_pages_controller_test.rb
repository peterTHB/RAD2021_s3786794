require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get home_path
    assert_response :success
  end

  test "should check valid email" do
    emailTest = "s3786794@student.rmit.edu.au"
    assert_equal(true, StaticPagesController.checkEmailRegex(emailTest))
  end

  test "should check invalid email" do
    emailTest = "test.com"
    assert_equal(false, StaticPagesController.checkEmailRegex(emailTest))
  end

end
