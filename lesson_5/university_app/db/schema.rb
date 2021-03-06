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

ActiveRecord::Schema.define(version: 20_171_121_231_155) do
  create_table 'active_admin_comments', force: :cascade do |t|
    t.string 'namespace'
    t.text 'body'
    t.string 'resource_type'
    t.integer 'resource_id'
    t.string 'author_type'
    t.integer 'author_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index %w[author_type author_id], name: 'index_active_admin_comments_on_author_type_and_author_id'
    t.index ['namespace'], name: 'index_active_admin_comments_on_namespace'
    t.index %w[resource_type resource_id], name: 'index_active_admin_comments_on_resource_type_and_resource_id'
  end

  create_table 'admin_users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer 'sign_in_count', default: 0, null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string 'current_sign_in_ip'
    t.string 'last_sign_in_ip'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_admin_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_admin_users_on_reset_password_token', unique: true
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

  create_table 'faculties', force: :cascade do |t|
    t.string 'name'
    t.integer 'university_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['university_id'], name: 'index_faculties_on_university_id'
  end

  create_table 'groups', force: :cascade do |t|
    t.string 'name'
    t.integer 'kafedra_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['kafedra_id'], name: 'index_groups_on_kafedra_id'
  end

  create_table 'kafedras', force: :cascade do |t|
    t.string 'name'
    t.integer 'faculty_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['faculty_id'], name: 'index_kafedras_on_faculty_id'
  end

  create_table 'students', force: :cascade do |t|
    t.string 'first_name'
    t.string 'last_name'
    t.string 'kurs'
    t.integer 'group_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['group_id'], name: 'index_students_on_group_id'
  end

  create_table 'teachers', force: :cascade do |t|
    t.string 'first_name'
    t.string 'last_name'
    t.string 'age'
    t.integer 'university_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['university_id'], name: 'index_teachers_on_university_id'
  end

  create_table 'universities', force: :cascade do |t|
    t.string 'name'
    t.integer 'city_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['city_id'], name: 'index_universities_on_city_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer 'sign_in_count', default: 0, null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string 'current_sign_in_ip'
    t.string 'last_sign_in_ip'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end
end
