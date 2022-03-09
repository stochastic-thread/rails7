require "application_system_test_case"

class CryptoassetsTest < ApplicationSystemTestCase
  setup do
    @cryptoasset = cryptoassets(:one)
  end

  test "visiting the index" do
    visit cryptoassets_url
    assert_selector "h1", text: "Cryptoassets"
  end

  test "should create cryptoasset" do
    visit cryptoassets_url
    click_on "New cryptoasset"

    fill_in "Description", with: @cryptoasset.description
    fill_in "Name", with: @cryptoasset.name
    fill_in "Ticker", with: @cryptoasset.ticker
    click_on "Create Cryptoasset"

    assert_text "Cryptoasset was successfully created"
    click_on "Back"
  end

  test "should update Cryptoasset" do
    visit cryptoasset_url(@cryptoasset)
    click_on "Edit this cryptoasset", match: :first

    fill_in "Description", with: @cryptoasset.description
    fill_in "Name", with: @cryptoasset.name
    fill_in "Ticker", with: @cryptoasset.ticker
    click_on "Update Cryptoasset"

    assert_text "Cryptoasset was successfully updated"
    click_on "Back"
  end

  test "should destroy Cryptoasset" do
    visit cryptoasset_url(@cryptoasset)
    click_on "Destroy this cryptoasset", match: :first

    assert_text "Cryptoasset was successfully destroyed"
  end
end
