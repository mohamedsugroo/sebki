require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get inex" do
    get home_inex_url
    assert_response :success
  end

end
