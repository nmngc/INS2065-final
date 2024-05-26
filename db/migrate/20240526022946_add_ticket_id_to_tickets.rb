class AddTicketIdToTickets < ActiveRecord::Migration[7.0]
  def change
    add_column :tickets, :ticket_id, :string
  end
end
