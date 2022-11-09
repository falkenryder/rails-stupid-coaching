require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "ask renders form" do
    visit ask_url

    assert_selector "h1", text: "Stupid Coaching"
  end

  test "else returns I don't care, get dressed and go to work!" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
    take_screenshot
  end

  test "ask question returns Silly question, get dressed and go to work!" do
    visit ask_url
    fill_in "question", with: "Can I go shopping?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
    take_screenshot
  end

  test "ask I am going to work returns Great!" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask"

    assert_text "Great!"
    take_screenshot
  end
end
