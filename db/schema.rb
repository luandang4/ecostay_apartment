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

ActiveRecord::Schema.define(version: 2022_12_23_064817) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "phone_number"
    t.string "country_code"
    t.integer "sex", default: 1
    t.string "birthdate"
    t.string "address"
    t.string "district"
    t.string "prefecture"
    t.string "identity_card_code"
    t.string "provide_date"
    t.string "place_provide"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
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
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "role", default: 0, null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "apartments", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "address"
    t.string "district"
    t.string "prefecture"
    t.datetime "deleted_at"
    t.bigint "admin_user_id"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["admin_user_id"], name: "index_apartments_on_admin_user_id"
    t.index ["user_id"], name: "index_apartments_on_user_id"
  end

  create_table "devices", force: :cascade do |t|
    t.string "name"
    t.datetime "time_active"
    t.integer "status"
    t.bigint "room_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["room_id"], name: "index_devices_on_room_id"
  end

  create_table "group_users", force: :cascade do |t|
    t.bigint "room_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["room_id"], name: "index_group_users_on_room_id"
  end

  create_table "monthly_expenses", force: :cascade do |t|
    t.string "name"
    t.datetime "report_date"
    t.float "price"
    t.float "payment"
    t.datetime "deleted_at"
    t.integer "status"
    t.bigint "room_id"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["room_id"], name: "index_monthly_expenses_on_room_id"
    t.index ["user_id"], name: "index_monthly_expenses_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "status", default: 0
    t.float "amout_service"
    t.float "price"
    t.float "sum"
    t.datetime "pay_date"
    t.bigint "service_room_id"
    t.bigint "room_id"
    t.bigint "group_user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_user_id"], name: "index_orders_on_group_user_id"
    t.index ["room_id"], name: "index_orders_on_room_id"
    t.index ["service_room_id"], name: "index_orders_on_service_room_id"
  end

  create_table "room_tenantes", force: :cascade do |t|
    t.boolean "is_tenante", default: true
    t.datetime "rental_date"
    t.datetime "deleted_at"
    t.bigint "account_id"
    t.bigint "room_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_room_tenantes_on_account_id"
    t.index ["room_id"], name: "index_room_tenantes_on_room_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.integer "status", default: 0
    t.text "notes"
    t.datetime "deleted_at"
    t.bigint "apartment_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["apartment_id"], name: "index_rooms_on_apartment_id"
  end

  create_table "service_aggregations", force: :cascade do |t|
    t.string "name"
    t.integer "service_id"
    t.integer "consumption_index"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "service_rooms", force: :cascade do |t|
    t.datetime "deleted_at"
    t.bigint "service_id"
    t.bigint "room_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["room_id"], name: "index_service_rooms_on_room_id"
    t.index ["service_id"], name: "index_service_rooms_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.string "service_type"
    t.float "price"
    t.string "unit"
    t.datetime "deleted_at"
    t.integer "apartment_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "name"
    t.string "phone_number"
    t.string "country_code"
    t.integer "sex"
    t.string "birthdate"
    t.integer "role", default: 0, null: false
    t.string "address"
    t.string "district"
    t.string "prefecture"
    t.datetime "deleted_at"
    t.bigint "room_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.bigint "group_user_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["group_user_id"], name: "index_users_on_group_user_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["room_id"], name: "index_users_on_room_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "users", "group_users"
end
