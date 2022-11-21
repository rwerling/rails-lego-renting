class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :model_id
      t.integer :user_id
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
