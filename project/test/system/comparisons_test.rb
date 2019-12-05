require "application_system_test_case"

class ComparisonsTest < ApplicationSystemTestCase
  setup do
    @comparison = comparisons(:one)
  end

  test "visiting the index" do
    visit comparisons_url
    assert_selector "h1", text: "Comparisons"
  end

  test "creating a Comparison" do
    visit comparisons_url
    click_on "New Comparison"

    fill_in "Choice", with: @comparison.choice
    fill_in "Record", with: @comparison.record_id
    fill_in "User", with: @comparison.user_id
    click_on "Create Comparison"

    assert_text "Comparison was successfully created"
    click_on "Back"
  end

  test "updating a Comparison" do
    visit comparisons_url
    click_on "Edit", match: :first

    fill_in "Choice", with: @comparison.choice
    fill_in "Record", with: @comparison.record_id
    fill_in "User", with: @comparison.user_id
    click_on "Update Comparison"

    assert_text "Comparison was successfully updated"
    click_on "Back"
  end

  test "destroying a Comparison" do
    visit comparisons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comparison was successfully destroyed"
  end
end
