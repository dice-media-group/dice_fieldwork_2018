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

ActiveRecord::Schema.define(version: 20181013043041) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.boolean "no_customer_email_address"
    t.string "primary_phone_number"
    t.string "secondary_phone_number"
    t.string "mobile_phone"
    t.string "fax"
    t.boolean "is_business"
    t.string "referral_source"
    t.string "company_name"
    t.string "account_ref_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "addresses", force: :cascade do |t|
    t.string "street_one"
    t.string "street_two"
    t.string "city"
    t.string "state"
    t.string "postal_code"
    t.boolean "is_billing"
    t.string "addressable_type"
    t.bigint "addressable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable_type_and_addressable_id"
  end

  create_table "consultations", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "account_id"
    t.string "name"
    t.text "description"
    t.boolean "is_all_day"
    t.date "from_date"
    t.time "from_time"
    t.date "to_date"
    t.time "to_time"
    t.string "repeats"
    t.integer "repeats_every_n_days"
    t.integer "repeats_every_n_weeks"
    t.integer "repeats_weekly_each_days_of_the_week_mask"
    t.integer "repeats_every_n_months"
    t.string "repeats_monthly"
    t.integer "repeats_monthly_each_days_of_the_month_mask"
    t.integer "repeats_monthly_on_ordinals_mask"
    t.integer "repeats_monthly_on_days_of_the_week_mask"
    t.integer "repeats_every_n_years"
    t.integer "repeats_yearly_each_months_of_the_year_mask"
    t.boolean "repeats_yearly_on"
    t.integer "repeats_yearly_on_ordinals_mask"
    t.integer "repeats_yearly_on_days_of_the_week_mask"
    t.string "repeat_ends"
    t.date "repeat_ends_on"
    t.string "time_zone"
    t.integer "calendar_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_consultations_on_account_id"
    t.index ["user_id"], name: "index_consultations_on_user_id"
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer "priority", default: 0, null: false
    t.integer "attempts", default: 0, null: false
    t.text "handler", null: false
    t.text "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string "locked_by"
    t.string "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["priority", "run_at"], name: "delayed_jobs_priority"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object"
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

  add_foreign_key "consultations", "accounts"
  add_foreign_key "consultations", "users"
end
