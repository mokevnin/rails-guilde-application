require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test '#index' do
    article = articles(:one)
    get root_path
    assert_response :success
  end

end
