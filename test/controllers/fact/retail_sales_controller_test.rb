require "test_helper"

class Fact::RetailSalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fact_retail_sale = fact_retail_sales(:one)
  end

  test "should get index" do
    get fact_retail_sales_url
    assert_response :success
  end

  test "should get new" do
    get new_fact_retail_sale_url
    assert_response :success
  end

  test "should create fact_retail_sale" do
    assert_difference("Fact::RetailSale.count") do
      post fact_retail_sales_url, params: { fact_retail_sale: { date: @fact_retail_sale.date, dimension_product_id: @fact_retail_sale.dimension_product_id, dimension_store_id: @fact_retail_sale.dimension_store_id, discount_unit_price: @fact_retail_sale.discount_unit_price, extended_cost_dollar_amount: @fact_retail_sale.extended_cost_dollar_amount, extended_discount_dollar_amount: @fact_retail_sale.extended_discount_dollar_amount, extended_gross_profit_dollar_amount: @fact_retail_sale.extended_gross_profit_dollar_amount, extended_sales_dollar_amount: @fact_retail_sale.extended_sales_dollar_amount, net_unit_price: @fact_retail_sale.net_unit_price, pos_transaction_number: @fact_retail_sale.pos_transaction_number, regular_unit_price: @fact_retail_sale.regular_unit_price, sales_quantity: @fact_retail_sale.sales_quantity } }
    end

    assert_redirected_to fact_retail_sale_url(Fact::RetailSale.last)
  end

  test "should show fact_retail_sale" do
    get fact_retail_sale_url(@fact_retail_sale)
    assert_response :success
  end

  test "should get edit" do
    get edit_fact_retail_sale_url(@fact_retail_sale)
    assert_response :success
  end

  test "should update fact_retail_sale" do
    patch fact_retail_sale_url(@fact_retail_sale), params: { fact_retail_sale: { date: @fact_retail_sale.date, dimension_product_id: @fact_retail_sale.dimension_product_id, dimension_store_id: @fact_retail_sale.dimension_store_id, discount_unit_price: @fact_retail_sale.discount_unit_price, extended_cost_dollar_amount: @fact_retail_sale.extended_cost_dollar_amount, extended_discount_dollar_amount: @fact_retail_sale.extended_discount_dollar_amount, extended_gross_profit_dollar_amount: @fact_retail_sale.extended_gross_profit_dollar_amount, extended_sales_dollar_amount: @fact_retail_sale.extended_sales_dollar_amount, net_unit_price: @fact_retail_sale.net_unit_price, pos_transaction_number: @fact_retail_sale.pos_transaction_number, regular_unit_price: @fact_retail_sale.regular_unit_price, sales_quantity: @fact_retail_sale.sales_quantity } }
    assert_redirected_to fact_retail_sale_url(@fact_retail_sale)
  end

  test "should destroy fact_retail_sale" do
    assert_difference("Fact::RetailSale.count", -1) do
      delete fact_retail_sale_url(@fact_retail_sale)
    end

    assert_redirected_to fact_retail_sales_url
  end
end
