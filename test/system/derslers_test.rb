require "application_system_test_case"

class DerslersTest < ApplicationSystemTestCase
  setup do
    @dersler = derslers(:one)
  end

  test "visiting the index" do
    visit derslers_url
    assert_selector "h1", text: "Derslers"
  end

  test "creating a Dersler" do
    visit derslers_url
    click_on "New Dersler"

    fill_in "Aciklama", with: @dersler.aciklama
    fill_in "Baslik", with: @dersler.baslik
    fill_in "Konu", with: @dersler.konu
    fill_in "Tarih", with: @dersler.tarih
    click_on "Create Dersler"

    assert_text "Dersler was successfully created"
    click_on "Back"
  end

  test "updating a Dersler" do
    visit derslers_url
    click_on "Edit", match: :first

    fill_in "Aciklama", with: @dersler.aciklama
    fill_in "Baslik", with: @dersler.baslik
    fill_in "Konu", with: @dersler.konu
    fill_in "Tarih", with: @dersler.tarih
    click_on "Update Dersler"

    assert_text "Dersler was successfully updated"
    click_on "Back"
  end

  test "destroying a Dersler" do
    visit derslers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dersler was successfully destroyed"
  end
end
