class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.string :name
      t.references :takeoff_airport, foreign_key: true
      t.references :landing_airport, foreign_key: true

      t.timestamps
    end
  end
end
