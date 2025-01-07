class CreateDimensionProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :dimension_products do |t|
      t.string :product_description
      t.string :brand_description
      t.string :subcategory_description
      t.string :category_description
      t.string :department_description
      t.string :fat_content

      t.timestamps
    end
  end
end
