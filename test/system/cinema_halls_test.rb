require "application_system_test_case"

class CinemaHallsTest < ApplicationSystemTestCase
  setup do
    @cinema_hall = cinema_halls(:one)
  end

  test "visiting the index" do
    visit cinema_halls_url
    assert_selector "h1", text: "Cinema halls"
  end

  test "should create cinema hall" do
    visit cinema_halls_url
    click_on "New cinema hall"

    fill_in "Cinema hall", with: @cinema_hall.cinema_hall_id
    fill_in "Cinema hall name", with: @cinema_hall.cinema_hall_name
    fill_in "Location", with: @cinema_hall.location_id
    fill_in "Total seats", with: @cinema_hall.total_seats
    click_on "Create Cinema hall"

    assert_text "Cinema hall was successfully created"
    click_on "Back"
  end

  test "should update Cinema hall" do
    visit cinema_hall_url(@cinema_hall)
    click_on "Edit this cinema hall", match: :first

    fill_in "Cinema hall", with: @cinema_hall.cinema_hall_id
    fill_in "Cinema hall name", with: @cinema_hall.cinema_hall_name
    fill_in "Location", with: @cinema_hall.location_id
    fill_in "Total seats", with: @cinema_hall.total_seats
    click_on "Update Cinema hall"

    assert_text "Cinema hall was successfully updated"
    click_on "Back"
  end

  test "should destroy Cinema hall" do
    visit cinema_hall_url(@cinema_hall)
    click_on "Destroy this cinema hall", match: :first

    assert_text "Cinema hall was successfully destroyed"
  end
end
