class DimensionDate
  attr_reader :date

  def initialize(date)
    @date = date
  end

  def week_number
    date.strftime("%-V").to_i
  end

  def year
    date.strftime("%Y")
  end

  def day_of_week
    date.cwday
  end

  def full_description
    date.strftime("%B %d, %Y")
  end

  def month
    date.month
  end

  def month_name
    date.strftime("%B")
  end

  def quarter
    (date.month / 3.0).ceil
  end

  def days_in_month
    Time.days_in_month(date.month, date.year)
  end

  def weeks_in_month
    days_in_month.to_f / 7
  end
end

namespace :dimension_dates do
  desc "Populate Dimension::Dates"
  task populate_dimension_dates: :environment do
    start_date = Date.parse("01/01/2018")
    end_date = start_date + 20.years

    (start_date..end_date).each do |date|
      dimension_date = DimensionDate.new(date)

      puts "Creating #{date}."

      Dimension::Date.create(
        date: dimension_date.date,
        week_number: dimension_date.week_number,
        day_of_week: dimension_date.day_of_week,
        full_description: dimension_date.full_description,
        month: dimension_date.month,
        month_name: dimension_date.month_name,
        quarter: dimension_date.quarter,
        year: dimension_date.year,
        days_in_month: dimension_date.days_in_month,
        weeks_in_month: dimension_date.weeks_in_month
      )
    end
  end

  desc "Populate Special Dates"
  task populate_special_dates: :environment do
    puts "Creating Unknown Date"
    Dimension::Date.create(
      date: Date.parse("1980-04-19"),
      full_description: "Unknown Date",
    )

    puts "Creating To Be Determined"
    Dimension::Date.create(
      date: Date.parse("9999-12-31"),
      full_description: "To Be Determined",
    )
  end
end
