require "application_system_test_case"

class PizzaTypesTest < ApplicationSystemTestCase
  setup do
    @pizza_type = pizza_types(:one)
  end

  test "visiting the index" do
    visit pizza_types_url
    assert_selector "h1", text: "Pizza Types"
  end

  test "creating a Pizza type" do
    visit pizza_types_url
    click_on "New Pizza Type"

    fill_in "Name", with: @pizza_type.name
    fill_in "Price", with: @pizza_type.price
    click_on "Create Pizza type"

    assert_text "Pizza type was successfully created"
    click_on "Back"
  end

  test "updating a Pizza type" do
    visit pizza_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @pizza_type.name
    fill_in "Price", with: @pizza_type.price
    click_on "Update Pizza type"

    assert_text "Pizza type was successfully updated"
    click_on "Back"
  end

  test "destroying a Pizza type" do
    visit pizza_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pizza type was successfully destroyed"
  end
end
