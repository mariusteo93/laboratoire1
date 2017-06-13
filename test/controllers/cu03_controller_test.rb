require 'test_helper'

class Cu03ControllerTest < ActionController::TestCase
  test "should get organisme" do
    get :organisme
    assert_response :success
  end

end
