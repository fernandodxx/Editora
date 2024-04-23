require "application_system_test_case"

class EvaluatedsTest < ApplicationSystemTestCase
  setup do
    @evaluated = evaluateds(:one)
  end

  test "visiting the index" do
    visit evaluateds_url
    assert_selector "h1", text: "Evaluateds"
  end

  test "should create evaluated" do
    visit evaluateds_url
    click_on "New evaluated"

    fill_in "Birthdate", with: @evaluated.birthdate
    fill_in "Cpf", with: @evaluated.cpf
    fill_in "Email", with: @evaluated.email
    fill_in "Name", with: @evaluated.name
    fill_in "Psychologist", with: @evaluated.psychologist_id
    click_on "Create Evaluated"

    assert_text "Evaluated was successfully created"
    click_on "Back"
  end

  test "should update Evaluated" do
    visit evaluated_url(@evaluated)
    click_on "Edit this evaluated", match: :first

    fill_in "Birthdate", with: @evaluated.birthdate
    fill_in "Cpf", with: @evaluated.cpf
    fill_in "Email", with: @evaluated.email
    fill_in "Name", with: @evaluated.name
    fill_in "Psychologist", with: @evaluated.psychologist_id
    click_on "Update Evaluated"

    assert_text "Evaluated was successfully updated"
    click_on "Back"
  end

  test "should destroy Evaluated" do
    visit evaluated_url(@evaluated)
    click_on "Destroy this evaluated", match: :first

    assert_text "Evaluated was successfully destroyed"
  end
end
