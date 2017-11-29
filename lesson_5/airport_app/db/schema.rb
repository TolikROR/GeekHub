# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_171_113_174_555) do
  create_table 'aircrafts', force: :cascade do |t|
    t.string 'name'
    t.integer 'city_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['city_id'], name: 'index_aircrafts_on_city_id'
  end

  create_table 'cities', force: :cascade do |t|
    t.string 'name'
    t.integer 'country_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['country_id'], name: 'index_cities_on_country_id'
  end

  create_table 'countries', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'avatar'
  end

  create_table 'flights', force: :cascade do |t|
    t.string 'name'
    t.integer 'takeoff_airport_id'
    t.integer 'landing_airport_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['landing_airport_id'], name: 'index_flights_on_landing_airport_id'
    t.index ['takeoff_airport_id'], name: 'index_flights_on_takeoff_airport_id'
  end

  create_table 'genders', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'landing_airports', force: :cascade do |t|
    t.integer 'country_id'
    t.integer 'city_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['city_id'], name: 'index_landing_airports_on_city_id'
    t.index ['country_id'], name: 'index_landing_airports_on_country_id'
  end

  create_table 'orders', force: :cascade do |t|
    t.integer 'user_id'
    t.integer 'ticket_id'
    t.integer 'count'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['ticket_id'], name: 'index_orders_on_ticket_id'
    t.index ['user_id'], name: 'index_orders_on_user_id'
  end

  create_table 'takeoff_airports', force: :cascade do |t|
    t.integer 'country_id'
    t.integer 'city_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['city_id'], name: 'index_takeoff_airports_on_city_id'
    t.index ['country_id'], name: 'index_takeoff_airports_on_country_id'
  end

  create_table 'tickets', force: :cascade do |t|
    t.integer 'flight_id'
    t.integer 'price'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['flight_id'], name: 'index_tickets_on_flight_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'first_name'
    t.string 'last_name'
    t.integer 'age'
    t.integer 'gender_id'
    t.integer 'country_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['country_id'], name: 'index_users_on_country_id'
    t.index ['gender_id'], name: 'index_users_on_gender_id'
  end
end
