class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :total_price
      t.references :session, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
