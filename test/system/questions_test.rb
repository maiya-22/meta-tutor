require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  setup do
    @question = questions(:one)
  end

  test "visiting the index" do
    visit questions_url
    assert_selector "h1", text: "Questions"
  end

  test "creating a Question" do
    visit questions_url
    click_on "New Question"

    fill_in "Content", with: @question.content
    fill_in "Level", with: @question.level
    fill_in "Page", with: @question.page
    fill_in "Status", with: @question.status
    fill_in "Time", with: @question.time
    fill_in "Title", with: @question.title
    fill_in "Tutorial", with: @question.tutorial_id
    fill_in "User", with: @question.user_id
    click_on "Create Question"

    assert_text "Question was successfully created"
    click_on "Back"
  end

  test "updating a Question" do
    visit questions_url
    click_on "Edit", match: :first

    fill_in "Content", with: @question.content
    fill_in "Level", with: @question.level
    fill_in "Page", with: @question.page
    fill_in "Status", with: @question.status
    fill_in "Time", with: @question.time
    fill_in "Title", with: @question.title
    fill_in "Tutorial", with: @question.tutorial_id
    fill_in "User", with: @question.user_id
    click_on "Update Question"

    assert_text "Question was successfully updated"
    click_on "Back"
  end

  test "destroying a Question" do
    visit questions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Question was successfully destroyed"
  end
end
