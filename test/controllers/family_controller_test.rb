require 'test_helper'

class FamilyControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get family_show_url
    assert_response :success
  end

end
