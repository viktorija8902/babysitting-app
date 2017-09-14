require 'test_helper'

class FamilyProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get family_profile_index_url
    assert_response :success
  end

end
