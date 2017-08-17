require 'test_helper'

class InformaControllerTest < ActionDispatch::IntegrationTest
  test "should get vis" do
    get informa_vis_url
    assert_response :success
  end

end
