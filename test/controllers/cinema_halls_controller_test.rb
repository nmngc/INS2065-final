require "test_helper"

class CinemaHallsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cinema_hall = cinema_halls(:one)
  end

  test "should get index" do
    get cinema_halls_url
    assert_response :success
  end

  test "should get new" do
    get new_cinema_hall_url
    assert_response :success
  end

  test "should create cinema_hall" do
    assert_difference("CinemaHall.count") do
      post cinema_halls_url, params: { cinema_hall: { cinema_hall_id: @cinema_hall.cinema_hall_id, cinema_hall_name: @cinema_hall.cinema_hall_name, location_id: @cinema_hall.location_id, total_seats: @cinema_hall.total_seats } }
    end

    assert_redirected_to cinema_hall_url(CinemaHall.last)
  end

  test "should show cinema_hall" do
    get cinema_hall_url(@cinema_hall)
    assert_response :success
  end

  test "should get edit" do
    get edit_cinema_hall_url(@cinema_hall)
    assert_response :success
  end

  test "should update cinema_hall" do
    patch cinema_hall_url(@cinema_hall), params: { cinema_hall: { cinema_hall_id: @cinema_hall.cinema_hall_id, cinema_hall_name: @cinema_hall.cinema_hall_name, location_id: @cinema_hall.location_id, total_seats: @cinema_hall.total_seats } }
    assert_redirected_to cinema_hall_url(@cinema_hall)
  end

  test "should destroy cinema_hall" do
    assert_difference("CinemaHall.count", -1) do
      delete cinema_hall_url(@cinema_hall)
    end

    assert_redirected_to cinema_halls_url
  end
end
