require "test_helper"

class AnswersControllerTest < ActionDispatch::IntegrationTest
  test "should get ask" do
    get answers_ask_url
    assert_response :success
  end
end
