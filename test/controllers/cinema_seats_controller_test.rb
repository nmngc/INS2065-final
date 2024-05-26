require "test_helper"

class CinemaSeatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cinema_seat = cinema_seats(:one)
  end

  test "should get index" do
    get cinema_seats_url
    assert_response :success
  end

  test "should get new" do
    get new_cinema_seat_url
    assert_response :success
  end

  test "should create cinema_seat" do
    assert_difference("CinemaSeat.count") do
      post cinema_seats_url, params: { cinema_seat: { cinema_hall_id: @cinema_seat.cinema_hall_id, cinema_seat_id: @cinema_seat.cinema_seat_id, cinema_seat_number: @cinema_seat.cinema_seat_number, seat_type: @cinema_seat.seat_type } }
    end

    assert_redirected_to cinema_seat_url(CinemaSeat.last)
  end

  test "should show cinema_seat" do
    get cinema_seat_url(@cinema_seat)
    assert_response :success
  end

  test "should get edit" do
    get edit_cinema_seat_url(@cinema_seat)
    assert_response :success
  end

  test "should update cinema_seat" do
    patch cinema_seat_url(@cinema_seat), params: { cinema_seat: { cinema_hall_id: @cinema_seat.cinema_hall_id, cinema_seat_id: @cinema_seat.cinema_seat_id, cinema_seat_number: @cinema_seat.cinema_seat_number, seat_type: @cinema_seat.seat_type } }
    assert_redirected_to cinema_seat_url(@cinema_seat)
  end

  test "should destroy cinema_seat" do
    assert_difference("CinemaSeat.count", -1) do
      delete cinema_seat_url(@cinema_seat)
    end

    assert_redirected_to cinema_seats_url
  end
end
