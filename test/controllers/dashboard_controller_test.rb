require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get homepage" do
    get dashboard_homepage_url
    assert_response :success
  end

end
