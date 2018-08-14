require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_path
    assert_response :success
  end

  test "presence of components" do
    get root_path
    assert_select '.navbar'
    assert_select '.container'
    assert_select '.wrapper'
    assert_select '.tab'
    assert_select '.button'
    assert_select '.footer'
    assert_select '.banner'
  end

end
