require 'test_helper'

class ServformControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get servform_home_url
    assert_response :success
  end

  test "should get result" do
    get servform_result_url
    assert_response :success
  end

end
