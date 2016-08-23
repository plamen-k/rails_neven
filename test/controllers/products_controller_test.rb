require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { benefits_en: @product.benefits_en, benefits_nb: @product.benefits_nb, categories_id: @product.categories_id, description_en: @product.description_en, description_nb: @product.description_nb, featured: @product.featured, slug: @product.slug, tags: @product.tags, thubmnail: @product.thubmnail, tips_en: @product.tips_en, tips_nb: @product.tips_nb, title_en: @product.title_en, title_nb: @product.title_nb } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { benefits_en: @product.benefits_en, benefits_nb: @product.benefits_nb, categories_id: @product.categories_id, description_en: @product.description_en, description_nb: @product.description_nb, featured: @product.featured, slug: @product.slug, tags: @product.tags, thubmnail: @product.thubmnail, tips_en: @product.tips_en, tips_nb: @product.tips_nb, title_en: @product.title_en, title_nb: @product.title_nb } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
