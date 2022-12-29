require "application_system_test_case"

class LaptopsTest < ApplicationSystemTestCase
  setup do
    @laptop = laptops(:one)
  end

  test "visiting the index" do
    visit laptops_url
    assert_selector "h1", text: "Laptops"
  end

  test "should create laptop" do
    visit laptops_url
    click_on "New laptop"

    fill_in "Brand", with: @laptop.brand
    fill_in "Name", with: @laptop.name
    fill_in "Offfer", with: @laptop.offfer
    fill_in "Price", with: @laptop.price
    click_on "Create Laptop"

    assert_text "Laptop was successfully created"
    click_on "Back"
  end

  test "should update Laptop" do
    visit laptop_url(@laptop)
    click_on "Edit this laptop", match: :first

    fill_in "Brand", with: @laptop.brand
    fill_in "Name", with: @laptop.name
    fill_in "Offfer", with: @laptop.offfer
    fill_in "Price", with: @laptop.price
    click_on "Update Laptop"

    assert_text "Laptop was successfully updated"
    click_on "Back"
  end

  test "should destroy Laptop" do
    visit laptop_url(@laptop)
    click_on "Destroy this laptop", match: :first

    assert_text "Laptop was successfully destroyed"
  end
end
