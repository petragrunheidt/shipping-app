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

ActiveRecord::Schema[7.0].define(version: 2022_10_01_233148) do
  create_table "service_orders", force: :cascade do |t|
    t.string "sender_full_address"
    t.string "sender_zip_code"
    t.string "package_code"
    t.integer "package_height"
    t.integer "package_width"
    t.integer "package_depth"
    t.integer "package_weight"
    t.string "receiver_name"
    t.string "receiver_full_address"
    t.string "receiver_zip_code"
    t.integer "distance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
