require "application_system_test_case"

class CinemaSeatsTest < ApplicationSystemTestCase
  setup do
    @cinema_seat = cinema_seats(:one)
  end

  test "visiting the index" do
    visit cinema_seats_url
    assert_selector "h1", text: "Cinema seats"
  end

  test "should create cinema seat" do
    visit cinema_seats_url
    click_on "New cinema seat"

    fill_in "Cinema hall", with: @cinema_seat.cinema_hall_id
    fill_in "Cinema seat", with: @cinema_seat.cinema_seat_id
    fill_in "Cinema seat number", with: @cinema_seat.cinema_seat_number
    fill_in "Seat type", with: @cinema_seat.seat_type
    click_on "Create Cinema seat"

    assert_text "Cinema seat was successfully created"
    click_on "Back"
  end

  test "should update Cinema seat" do
    visit cinema_seat_url(@cinema_seat)
    click_on "Edit this cinema seat", match: :first

    fill_in "Cinema hall", with: @cinema_seat.cinema_hall_id
    fill_in "Cinema seat", with: @cinema_seat.cinema_seat_id
    fill_in "Cinema seat number", with: @cinema_seat.cinema_seat_number
    fill_in "Seat type", with: @cinema_seat.seat_type
    click_on "Update Cinema seat"

    assert_text "Cinema seat was successfully updated"
    click_on "Back"
  end

  test "should destroy Cinema seat" do
    visit cinema_seat_url(@cinema_seat)
    click_on "Destroy this cinema seat", match: :first

    assert_text "Cinema seat was successfully destroyed"
  end
end
