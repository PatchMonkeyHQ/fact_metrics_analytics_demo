require "application_system_test_case"

class Fact::RetailSalesTest < ApplicationSystemTestCase
  setup do
    @fact_retail_sale = fact_retail_sales(:one)
  end

  test "visiting the index" do
    visit fact_retail_sales_url
    assert_selector "h1", text: "Retail sales"
  end

  test "should create retail sale" do
    visit fact_retail_sales_url
    click_on "New retail sale"

    fill_in "Date", with: @fact_retail_sale.date
    fill_in "Dimension product", with: @fact_retail_sale.dimension_product_id
    fill_in "Dimension store", with: @fact_retail_sale.dimension_store_id
    fill_in "Discount unit price", with: @fact_retail_sale.discount_unit_price
    fill_in "Extended cost dollar amount", with: @fact_retail_sale.extended_cost_dollar_amount
    fill_in "Extended discount dollar amount", with: @fact_retail_sale.extended_discount_dollar_amount
    fill_in "Extended gross profit dollar amount", with: @fact_retail_sale.extended_gross_profit_dollar_amount
    fill_in "Extended sales dollar amount", with: @fact_retail_sale.extended_sales_dollar_amount
    fill_in "Net unit price", with: @fact_retail_sale.net_unit_price
    fill_in "Pos transaction number", with: @fact_retail_sale.pos_transaction_number
    fill_in "Regular unit price", with: @fact_retail_sale.regular_unit_price
    fill_in "Sales quantity", with: @fact_retail_sale.sales_quantity
    click_on "Create Retail sale"

    assert_text "Retail sale was successfully created"
    click_on "Back"
  end

  test "should update Retail sale" do
    visit fact_retail_sale_url(@fact_retail_sale)
    click_on "Edit this retail sale", match: :first

    fill_in "Date", with: @fact_retail_sale.date
    fill_in "Dimension product", with: @fact_retail_sale.dimension_product_id
    fill_in "Dimension store", with: @fact_retail_sale.dimension_store_id
    fill_in "Discount unit price", with: @fact_retail_sale.discount_unit_price
    fill_in "Extended cost dollar amount", with: @fact_retail_sale.extended_cost_dollar_amount
    fill_in "Extended discount dollar amount", with: @fact_retail_sale.extended_discount_dollar_amount
    fill_in "Extended gross profit dollar amount", with: @fact_retail_sale.extended_gross_profit_dollar_amount
    fill_in "Extended sales dollar amount", with: @fact_retail_sale.extended_sales_dollar_amount
    fill_in "Net unit price", with: @fact_retail_sale.net_unit_price
    fill_in "Pos transaction number", with: @fact_retail_sale.pos_transaction_number
    fill_in "Regular unit price", with: @fact_retail_sale.regular_unit_price
    fill_in "Sales quantity", with: @fact_retail_sale.sales_quantity
    click_on "Update Retail sale"

    assert_text "Retail sale was successfully updated"
    click_on "Back"
  end

  test "should destroy Retail sale" do
    visit fact_retail_sale_url(@fact_retail_sale)
    click_on "Destroy this retail sale", match: :first

    assert_text "Retail sale was successfully destroyed"
  end
end
