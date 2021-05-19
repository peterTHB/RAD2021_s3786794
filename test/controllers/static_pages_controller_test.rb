require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  REGEX_PATTERN = /^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+[A-Za-z]{2,6}$/

  test "should get home" do
    get home_path
    assert_response :success
  end

  test "should send email to controller" do
    emailTest = "s3786794@student.rmit.edu.au"
    post sendEmail_static_pages_path, params: {emailTyped: emailTest}
    assert_response :success
  end

  test "should get true for correct format email" do
    emailTest = "s3786794@student.rmit.edu.au"

    assert_equal true, (REGEX_PATTERN.match?(emailTest))
  end

  test "should get false for incorrect format email" do
    emailTest = "test.com"

    assert_equal false, (REGEX_PATTERN.match?(emailTest))
  end

end
