class CreateFactRetailSales < ActiveRecord::Migration[7.1]
  def change
    create_table :fact_retail_sales do |t|
      t.date :date
      t.integer :dimension_product_id
      t.integer :dimension_store_id
      t.integer :pos_transaction_number
      t.integer :sales_quantity
      t.decimal :regular_unit_price
      t.decimal :discount_unit_price
      t.decimal :net_unit_price
      t.decimal :extended_discount_dollar_amount
      t.decimal :extended_sales_dollar_amount
      t.decimal :extended_cost_dollar_amount
      t.decimal :extended_gross_profit_dollar_amount

      t.timestamps
    end
  end
end
