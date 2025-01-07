class CreateDimensionDates < ActiveRecord::Migration[7.1]
  def change
    create_table :dimension_dates do |t|
      t.integer :calendar_week_number
      t.date :date
      t.string :day_of_week
      t.integer :days_in_month
      t.string :full_description
      t.integer :month
      t.string :month_name
      t.integer :quarter
      t.integer :week_number
      t.float :weeks_in_month
      t.string :year

      t.timestamps
    end
  end
end
