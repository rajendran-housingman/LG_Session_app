require 'test_helper'

class SocialEncirhmentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get social_encirhment_index_url
    assert_response :success
  end

end
