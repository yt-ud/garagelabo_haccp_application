require 'test_helper'

class FormsControllerTest < ActionDispatch::IntegrationTest
  test "should get post" do
    get forms_post_url
    assert_response :success
  end

end
