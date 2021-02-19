require 'test_helper'

class TranslationControllerTest < ActionDispatch::IntegrationTest
  test "should get detect" do
    get translation_detect_url
    assert_response :success
  end

end
