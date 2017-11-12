class CreateLandingAirports < ActiveRecord::Migration[5.1]
  def change
    create_table :landing_airports do |t|
      t.references :country, foreign_key: true
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
