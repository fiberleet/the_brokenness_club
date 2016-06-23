require 'test_helper'

class HomePageControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | The Brokenness Club"
  end

end
