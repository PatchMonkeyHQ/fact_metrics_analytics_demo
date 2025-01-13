class Fact::RetailSale < ApplicationRecord
  include FactMetrics

  count :sales, all: true

  average :regular_unit_price
  average :discount_unit_price
  average :net_unit_price

  percentage :small_profit,
    field: :extended_gross_profit_dollar_amount,
    condition: "< 1.0",
    precision: 0

  percentage :medium_profit,
    field: :extended_gross_profit_dollar_amount,
    condition: ">= 1.0 AND extended_gross_profit_dollar_amount < 2.0",
    precision: 0

  percentage :large_profit,
    field: :extended_gross_profit_dollar_amount,
    condition: ">= 2.0",
    precision: 0


  belongs_to :dimension_date,
    class_name: "Dimension::Date"

  belongs_to :dimension_product,
    class_name: "Dimension::Product"
end
