require "application_system_test_case"

class TicketsTest < ApplicationSystemTestCase
  setup do
    @ticket = tickets(:one)
  end

  test "visiting the index" do
    visit tickets_url
    assert_selector "h1", text: "Tickets"
  end

  test "should create ticket" do
    visit tickets_url
    click_on "New ticket"

    fill_in "Cinama hall", with: @ticket.cinema_hall_id
    fill_in "Cinema seat", with: @ticket.cinema_seat_id
    fill_in "Customer", with: @ticket.customer_id
    fill_in "Movie", with: @ticket.movie_id
    fill_in "Payment", with: @ticket.payment_id
    fill_in "Payment method", with: @ticket.payment_method_id
    fill_in "Price", with: @ticket.price
    fill_in "Seat type", with: @ticket.seat_type
    fill_in "Showtime", with: @ticket.showtime_id
    click_on "Create Ticket"

    assert_text "Ticket was successfully created"
    click_on "Back"
  end

  test "should update Ticket" do
    visit ticket_url(@ticket)
    click_on "Edit this ticket", match: :first

    fill_in "Cinama hall", with: @ticket.cinema_hall_id
    fill_in "Cinema seat", with: @ticket.cinema_seat_id
    fill_in "Customer", with: @ticket.customer_id
    fill_in "Movie", with: @ticket.movie_id
    fill_in "Payment", with: @ticket.payment_id
    fill_in "Payment method", with: @ticket.payment_method_id
    fill_in "Price", with: @ticket.price
    fill_in "Seat type", with: @ticket.seat_type
    fill_in "Showtime", with: @ticket.showtime_id
    click_on "Update Ticket"

    assert_text "Ticket was successfully updated"
    click_on "Back"
  end

  test "should destroy Ticket" do
    visit ticket_url(@ticket)
    click_on "Destroy this ticket", match: :first

    assert_text "Ticket was successfully destroyed"
  end
end
