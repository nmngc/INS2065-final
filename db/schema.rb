# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_05_26_022946) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.integer "year"
    t.datetime "borrowed_at"
    t.boolean "available"
    t.bigint "subject_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_books_on_subject_id"
  end

  create_table "cinema_halls", force: :cascade do |t|
    t.string "cinema_hall_id"
    t.string "cinema_hall_name"
    t.integer "total_seats"
    t.bigint "location_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_cinema_halls_on_location_id"
  end

  create_table "cinema_seats", force: :cascade do |t|
    t.string "cinema_seat_id"
    t.string "cinema_seat_number"
    t.string "seat_type"
    t.bigint "cinema_hall_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cinema_hall_id"], name: "index_cinema_seats_on_cinema_hall_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "customer_id"
    t.string "customer_name"
    t.string "phone"
    t.string "mobile_card"
    t.integer "reward_point"
    t.date "birth_date"
    t.string "customer_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "location_id"
    t.string "cinema_name"
    t.string "location"
    t.integer "total_cinema_hall"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.integer "numerical_order"
    t.string "movie_name"
    t.date "premiere"
    t.integer "duration"
    t.string "language"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "movie_id"
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string "method_id"
    t.string "method_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.datetime "payment_date"
    t.decimal "total"
    t.decimal "discount", precision: 5, scale: 2
    t.decimal "after_discount"
    t.bigint "payment_method_id", null: false
    t.bigint "movie_id", null: false
    t.bigint "customer_id", null: false
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "payment_id"
    t.index ["customer_id"], name: "index_payments_on_customer_id"
    t.index ["movie_id"], name: "index_payments_on_movie_id"
    t.index ["payment_method_id"], name: "index_payments_on_payment_method_id"
  end

  create_table "showtimes", force: :cascade do |t|
    t.string "show_time_id"
    t.bigint "movie_id", null: false
    t.time "show_time"
    t.date "date_shown"
    t.bigint "cinema_hall_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cinema_hall_id"], name: "index_showtimes_on_cinema_hall_id"
    t.index ["movie_id"], name: "index_showtimes_on_movie_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.bigint "cinema_hall_id", null: false
    t.bigint "payment_id", null: false
    t.bigint "movie_id", null: false
    t.bigint "showtime_id", null: false
    t.bigint "cinema_seat_id", null: false
    t.string "seat_type"
    t.bigint "payment_method_id", null: false
    t.bigint "customer_id", null: false
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ticket_id"
    t.index ["cinema_hall_id"], name: "index_tickets_on_cinema_hall_id"
    t.index ["cinema_seat_id"], name: "index_tickets_on_cinema_seat_id"
    t.index ["customer_id"], name: "index_tickets_on_customer_id"
    t.index ["movie_id"], name: "index_tickets_on_movie_id"
    t.index ["payment_id"], name: "index_tickets_on_payment_id"
    t.index ["payment_method_id"], name: "index_tickets_on_payment_method_id"
    t.index ["showtime_id"], name: "index_tickets_on_showtime_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "books", "subjects"
  add_foreign_key "cinema_halls", "locations"
  add_foreign_key "cinema_seats", "cinema_halls"
  add_foreign_key "payments", "customers"
  add_foreign_key "payments", "movies"
  add_foreign_key "payments", "payment_methods"
  add_foreign_key "showtimes", "cinema_halls"
  add_foreign_key "showtimes", "movies"
  add_foreign_key "tickets", "cinema_halls"
  add_foreign_key "tickets", "cinema_seats"
  add_foreign_key "tickets", "customers"
  add_foreign_key "tickets", "movies"
  add_foreign_key "tickets", "payment_methods"
  add_foreign_key "tickets", "payments"
  add_foreign_key "tickets", "showtimes"
end
