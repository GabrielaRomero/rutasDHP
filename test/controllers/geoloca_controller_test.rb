require 'test_helper'

class GeolocaControllerTest < ActionDispatch::IntegrationTest
  test "should get geo" do
    get geoloca_geo_url
    assert_response :success
  end

end
