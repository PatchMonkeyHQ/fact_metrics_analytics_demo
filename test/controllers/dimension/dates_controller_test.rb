require "test_helper"

class Dimension::DatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dimension_date = dimension_dates(:one)
  end

  test "should get index" do
    get dimension_dates_url
    assert_response :success
  end

  test "should get new" do
    get new_dimension_date_url
    assert_response :success
  end

  test "should create dimension_date" do
    assert_difference("Dimension::Date.count") do
      post dimension_dates_url, params: { dimension_date: { calendar_week_number: @dimension_date.calendar_week_number, date: @dimension_date.date, day_of_week: @dimension_date.day_of_week, days_in_month: @dimension_date.days_in_month, full_description: @dimension_date.full_description, month: @dimension_date.month, month_name: @dimension_date.month_name, quarter: @dimension_date.quarter, week_number: @dimension_date.week_number, weeks_in_month: @dimension_date.weeks_in_month, year: @dimension_date.year } }
    end

    assert_redirected_to dimension_date_url(Dimension::Date.last)
  end

  test "should show dimension_date" do
    get dimension_date_url(@dimension_date)
    assert_response :success
  end

  test "should get edit" do
    get edit_dimension_date_url(@dimension_date)
    assert_response :success
  end

  test "should update dimension_date" do
    patch dimension_date_url(@dimension_date), params: { dimension_date: { calendar_week_number: @dimension_date.calendar_week_number, date: @dimension_date.date, day_of_week: @dimension_date.day_of_week, days_in_month: @dimension_date.days_in_month, full_description: @dimension_date.full_description, month: @dimension_date.month, month_name: @dimension_date.month_name, quarter: @dimension_date.quarter, week_number: @dimension_date.week_number, weeks_in_month: @dimension_date.weeks_in_month, year: @dimension_date.year } }
    assert_redirected_to dimension_date_url(@dimension_date)
  end

  test "should destroy dimension_date" do
    assert_difference("Dimension::Date.count", -1) do
      delete dimension_date_url(@dimension_date)
    end

    assert_redirected_to dimension_dates_url
  end
end
