class Fact::RetailSale < ApplicationRecord
  belongs_to :dimension_date,
    class_name: "Dimension::Date"

  belongs_to :dimension_product,
    class_name: "Dimension::Product"
end
