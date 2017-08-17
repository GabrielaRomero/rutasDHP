require 'test_helper'

class InicioControllerTest < ActionDispatch::IntegrationTest
  test "should get ini" do
    get inicio_ini_url
    assert_response :success
  end

end
