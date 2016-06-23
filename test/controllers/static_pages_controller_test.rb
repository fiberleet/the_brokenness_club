require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | The Brokenness Club"
  end

  test "should get get_help" do
    get :get_help
    assert_response :success
    assert_select "title", "Get Help | The Brokenness Club"
  end

  test "should get give_help" do
    get :give_help
    assert_response :success
    assert_select "title", "Give Help | The Brokenness Club"
  end

end
