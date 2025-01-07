require "application_system_test_case"

class Dimension::DatesTest < ApplicationSystemTestCase
  setup do
    @dimension_date = dimension_dates(:one)
  end

  test "visiting the index" do
    visit dimension_dates_url
    assert_selector "h1", text: "Dates"
  end

  test "should create date" do
    visit dimension_dates_url
    click_on "New date"

    fill_in "Calendar week number", with: @dimension_date.calendar_week_number
    fill_in "Date", with: @dimension_date.date
    fill_in "Day of week", with: @dimension_date.day_of_week
    fill_in "Days in month", with: @dimension_date.days_in_month
    fill_in "Full description", with: @dimension_date.full_description
    fill_in "Month", with: @dimension_date.month
    fill_in "Month name", with: @dimension_date.month_name
    fill_in "Quarter", with: @dimension_date.quarter
    fill_in "Week number", with: @dimension_date.week_number
    fill_in "Weeks in month", with: @dimension_date.weeks_in_month
    fill_in "Year", with: @dimension_date.year
    click_on "Create Date"

    assert_text "Date was successfully created"
    click_on "Back"
  end

  test "should update Date" do
    visit dimension_date_url(@dimension_date)
    click_on "Edit this date", match: :first

    fill_in "Calendar week number", with: @dimension_date.calendar_week_number
    fill_in "Date", with: @dimension_date.date
    fill_in "Day of week", with: @dimension_date.day_of_week
    fill_in "Days in month", with: @dimension_date.days_in_month
    fill_in "Full description", with: @dimension_date.full_description
    fill_in "Month", with: @dimension_date.month
    fill_in "Month name", with: @dimension_date.month_name
    fill_in "Quarter", with: @dimension_date.quarter
    fill_in "Week number", with: @dimension_date.week_number
    fill_in "Weeks in month", with: @dimension_date.weeks_in_month
    fill_in "Year", with: @dimension_date.year
    click_on "Update Date"

    assert_text "Date was successfully updated"
    click_on "Back"
  end

  test "should destroy Date" do
    visit dimension_date_url(@dimension_date)
    click_on "Destroy this date", match: :first

    assert_text "Date was successfully destroyed"
  end
end
