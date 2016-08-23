require 'test_helper'

class StockistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stockist = stockists(:one)
  end

  test "should get index" do
    get stockists_url
    assert_response :success
  end

  test "should get new" do
    get new_stockist_url
    assert_response :success
  end

  test "should create stockist" do
    assert_difference('Stockist.count') do
      post stockists_url, params: { stockist: { address: @stockist.address, lat: @stockist.lat, lng: @stockist.lng, slug: @stockist.slug, thubmnail: @stockist.thubmnail, title: @stockist.title, title_en: @stockist.title_en, title_nb: @stockist.title_nb } }
    end

    assert_redirected_to stockist_url(Stockist.last)
  end

  test "should show stockist" do
    get stockist_url(@stockist)
    assert_response :success
  end

  test "should get edit" do
    get edit_stockist_url(@stockist)
    assert_response :success
  end

  test "should update stockist" do
    patch stockist_url(@stockist), params: { stockist: { address: @stockist.address, lat: @stockist.lat, lng: @stockist.lng, slug: @stockist.slug, thubmnail: @stockist.thubmnail, title: @stockist.title, title_en: @stockist.title_en, title_nb: @stockist.title_nb } }
    assert_redirected_to stockist_url(@stockist)
  end

  test "should destroy stockist" do
    assert_difference('Stockist.count', -1) do
      delete stockist_url(@stockist)
    end

    assert_redirected_to stockists_url
  end
end
