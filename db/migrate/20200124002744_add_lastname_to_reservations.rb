class AddLastnameToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :lastname, :string
  end
end
