require 'test_helper'

class HobbyImageControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get hobby_image_new_url
    assert_response :success
  end

  test "should get create" do
    get hobby_image_create_url
    assert_response :success
  end

end
