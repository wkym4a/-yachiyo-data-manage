require "application_system_test_case"

class BuildingsTest < ApplicationSystemTestCase
  setup do
    @building = buildings(:one)
  end

  test "visiting the index" do
    visit buildings_url
    assert_selector "h1", text: "Buildings"
  end

  test "creating a Building" do
    visit buildings_url
    click_on "New Building"

    fill_in "Floor", with: @building.floor
    fill_in "Lat", with: @building.lat
    fill_in "Lon", with: @building.lon
    fill_in "Memo", with: @building.memo
    fill_in "Name", with: @building.name
    fill_in "Ooya", with: @building.ooya_id
    fill_in "Sekisui div", with: @building.sekisui_div
    fill_in "Sekisui num", with: @building.sekisui_num
    fill_in "Type div", with: @building.type_div
    fill_in "Zip cd", with: @building.zip_cd
    click_on "Create Building"

    assert_text "Building was successfully created"
    click_on "Back"
  end

  test "updating a Building" do
    visit buildings_url
    click_on "Edit", match: :first

    fill_in "Floor", with: @building.floor
    fill_in "Lat", with: @building.lat
    fill_in "Lon", with: @building.lon
    fill_in "Memo", with: @building.memo
    fill_in "Name", with: @building.name
    fill_in "Ooya", with: @building.ooya_id
    fill_in "Sekisui div", with: @building.sekisui_div
    fill_in "Sekisui num", with: @building.sekisui_num
    fill_in "Type div", with: @building.type_div
    fill_in "Zip cd", with: @building.zip_cd
    click_on "Update Building"

    assert_text "Building was successfully updated"
    click_on "Back"
  end

  test "destroying a Building" do
    visit buildings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Building was successfully destroyed"
  end
end
