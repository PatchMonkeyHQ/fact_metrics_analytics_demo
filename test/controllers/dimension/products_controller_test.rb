require "test_helper"

class Dimension::ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dimension_product = dimension_products(:one)
  end

  test "should get index" do
    get dimension_products_url
    assert_response :success
  end

  test "should get new" do
    get new_dimension_product_url
    assert_response :success
  end

  test "should create dimension_product" do
    assert_difference("Dimension::Product.count") do
      post dimension_products_url, params: { dimension_product: { brand_description: @dimension_product.brand_description, category_description: @dimension_product.category_description, department_description: @dimension_product.department_description, fat_content: @dimension_product.fat_content, product_description: @dimension_product.product_description, subcategory_description: @dimension_product.subcategory_description } }
    end

    assert_redirected_to dimension_product_url(Dimension::Product.last)
  end

  test "should show dimension_product" do
    get dimension_product_url(@dimension_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_dimension_product_url(@dimension_product)
    assert_response :success
  end

  test "should update dimension_product" do
    patch dimension_product_url(@dimension_product), params: { dimension_product: { brand_description: @dimension_product.brand_description, category_description: @dimension_product.category_description, department_description: @dimension_product.department_description, fat_content: @dimension_product.fat_content, product_description: @dimension_product.product_description, subcategory_description: @dimension_product.subcategory_description } }
    assert_redirected_to dimension_product_url(@dimension_product)
  end

  test "should destroy dimension_product" do
    assert_difference("Dimension::Product.count", -1) do
      delete dimension_product_url(@dimension_product)
    end

    assert_redirected_to dimension_products_url
  end
end
