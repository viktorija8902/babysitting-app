require 'test_helper'

class BabysitterProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get babysitter_profile_index_url
    assert_response :success
  end

end
