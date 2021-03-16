require 'test_helper'

class RobotsControllerTest < ActionDispatch::IntegrationTest
  test "should get robot1" do
    get robots_robot1_url
    assert_response :success
  end

  test "should get robot2" do
    get robots_robot2_url
    assert_response :success
  end

  test "should get robot3" do
    get robots_robot3_url
    assert_response :success
  end

  test "should get robot4" do
    get robots_robot4_url
    assert_response :success
  end

end
