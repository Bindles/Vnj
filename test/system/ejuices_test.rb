require "application_system_test_case"

class EjuicesTest < ApplicationSystemTestCase
  setup do
    @ejuice = ejuices(:one)
  end

  test "visiting the index" do
    visit ejuices_url
    assert_selector "h1", text: "Ejuices"
  end

  test "creating a Ejuice" do
    visit ejuices_url
    click_on "New Ejuice"

    fill_in "Desc", with: @ejuice.desc
    fill_in "Flavor", with: @ejuice.flavor
    fill_in "Fp", with: @ejuice.fp
    fill_in "Name", with: @ejuice.name
    fill_in "Rating", with: @ejuice.rating
    click_on "Create Ejuice"

    assert_text "Ejuice was successfully created"
    click_on "Back"
  end

  test "updating a Ejuice" do
    visit ejuices_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @ejuice.desc
    fill_in "Flavor", with: @ejuice.flavor
    fill_in "Fp", with: @ejuice.fp
    fill_in "Name", with: @ejuice.name
    fill_in "Rating", with: @ejuice.rating
    click_on "Update Ejuice"

    assert_text "Ejuice was successfully updated"
    click_on "Back"
  end

  test "destroying a Ejuice" do
    visit ejuices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ejuice was successfully destroyed"
  end
end
