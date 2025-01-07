# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2025_01_07_152721) do
  create_table "dimension_dates", force: :cascade do |t|
    t.integer "calendar_week_number"
    t.date "date"
    t.string "day_of_week"
    t.integer "days_in_month"
    t.string "full_description"
    t.integer "month"
    t.string "month_name"
    t.integer "quarter"
    t.integer "week_number"
    t.float "weeks_in_month"
    t.string "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dimension_products", force: :cascade do |t|
    t.string "product_description"
    t.string "brand_description"
    t.string "subcategory_description"
    t.string "category_description"
    t.string "department_description"
    t.string "fat_content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fact_retail_sales", force: :cascade do |t|
    t.date "date"
    t.integer "dimension_product_id"
    t.integer "dimension_store_id"
    t.integer "pos_transaction_number"
    t.integer "sales_quantity"
    t.decimal "regular_unit_price"
    t.decimal "discount_unit_price"
    t.decimal "net_unit_price"
    t.decimal "extended_discount_dollar_amount"
    t.decimal "extended_sales_dollar_amount"
    t.decimal "extended_cost_dollar_amount"
    t.decimal "extended_gross_profit_dollar_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
