class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :number_of_guests
      t.string :date_of_reservation
      t.integer :user_id
      t.integer :restaurant_id

      t.timestamps null: false
    end
  end
end
