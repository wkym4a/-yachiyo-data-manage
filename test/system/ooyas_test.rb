require "application_system_test_case"

class OoyasTest < ApplicationSystemTestCase
  setup do
    @ooya = ooyas(:one)
  end

  test "visiting the index" do
    visit ooyas_url
    assert_selector "h1", text: "Ooyas"
  end

  test "creating a Ooya" do
    visit ooyas_url
    click_on "New Ooya"

    fill_in "Address1", with: @ooya.address1
    fill_in "Address2", with: @ooya.address2
    fill_in "Memo", with: @ooya.memo
    fill_in "Mobile", with: @ooya.mobile
    fill_in "Name", with: @ooya.name
    fill_in "Name kana", with: @ooya.name_kana
    fill_in "Surname", with: @ooya.surname
    fill_in "Surname kana", with: @ooya.surname_kana
    fill_in "Tel", with: @ooya.tel
    fill_in "Zip cd", with: @ooya.zip_cd
    click_on "Create Ooya"

    assert_text "Ooya was successfully created"
    click_on "Back"
  end

  test "updating a Ooya" do
    visit ooyas_url
    click_on "Edit", match: :first

    fill_in "Address1", with: @ooya.address1
    fill_in "Address2", with: @ooya.address2
    fill_in "Memo", with: @ooya.memo
    fill_in "Mobile", with: @ooya.mobile
    fill_in "Name", with: @ooya.name
    fill_in "Name kana", with: @ooya.name_kana
    fill_in "Surname", with: @ooya.surname
    fill_in "Surname kana", with: @ooya.surname_kana
    fill_in "Tel", with: @ooya.tel
    fill_in "Zip cd", with: @ooya.zip_cd
    click_on "Update Ooya"

    assert_text "Ooya was successfully updated"
    click_on "Back"
  end

  test "destroying a Ooya" do
    visit ooyas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ooya was successfully destroyed"
  end
end
