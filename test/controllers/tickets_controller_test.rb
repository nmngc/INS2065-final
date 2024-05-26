require "test_helper"

class TicketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket = tickets(:one)
  end

  test "should get index" do
    get tickets_url
    assert_response :success
  end

  test "should get new" do
    get new_ticket_url
    assert_response :success
  end

  test "should create ticket" do
    assert_difference("Ticket.count") do
      post tickets_url, params: { ticket: { cinema_hall_id: @ticket.cinema_hall_id, cinema_seat_id: @ticket.cinema_seat_id, customer_id: @ticket.customer_id, movie_id: @ticket.movie_id, payment_id: @ticket.payment_id, payment_method_id: @ticket.payment_method_id, price: @ticket.price, seat_type: @ticket.seat_type, showtime_id: @ticket.showtime_id } }
    end

    assert_redirected_to ticket_url(Ticket.last)
  end

  test "should show ticket" do
    get ticket_url(@ticket)
    assert_response :success
  end

  test "should get edit" do
    get edit_ticket_url(@ticket)
    assert_response :success
  end

  test "should update ticket" do
    patch ticket_url(@ticket), params: { ticket: { cinema_hall_id: @ticket.cinema_hall_id, cinema_seat_id: @ticket.cinema_seat_id, customer_id: @ticket.customer_id, movie_id: @ticket.movie_id, payment_id: @ticket.payment_id, payment_method_id: @ticket.payment_method_id, price: @ticket.price, seat_type: @ticket.seat_type, showtime_id: @ticket.showtime_id } }
    assert_redirected_to ticket_url(@ticket)
  end

  test "should destroy ticket" do
    assert_difference("Ticket.count", -1) do
      delete ticket_url(@ticket)
    end

    assert_redirected_to tickets_url
  end
end
