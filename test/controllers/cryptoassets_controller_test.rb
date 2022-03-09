require "test_helper"

class CryptoassetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cryptoasset = cryptoassets(:one)
  end

  test "should get index" do
    get cryptoassets_url
    assert_response :success
  end

  test "should get new" do
    get new_cryptoasset_url
    assert_response :success
  end

  test "should create cryptoasset" do
    assert_difference("Cryptoasset.count") do
      post cryptoassets_url, params: { cryptoasset: { description: @cryptoasset.description, name: @cryptoasset.name, ticker: @cryptoasset.ticker } }
    end

    assert_redirected_to cryptoasset_url(Cryptoasset.last)
  end

  test "should show cryptoasset" do
    get cryptoasset_url(@cryptoasset)
    assert_response :success
  end

  test "should get edit" do
    get edit_cryptoasset_url(@cryptoasset)
    assert_response :success
  end

  test "should update cryptoasset" do
    patch cryptoasset_url(@cryptoasset), params: { cryptoasset: { description: @cryptoasset.description, name: @cryptoasset.name, ticker: @cryptoasset.ticker } }
    assert_redirected_to cryptoasset_url(@cryptoasset)
  end

  test "should destroy cryptoasset" do
    assert_difference("Cryptoasset.count", -1) do
      delete cryptoasset_url(@cryptoasset)
    end

    assert_redirected_to cryptoassets_url
  end
end
