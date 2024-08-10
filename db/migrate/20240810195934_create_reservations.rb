class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date, null: false
      t.text :note

      t.timestamps
    end
  end
end
