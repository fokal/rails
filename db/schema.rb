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

ActiveRecord::Schema.define(version: 2018_09_02_221043) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "colors", force: :cascade do |t|
    t.string "hex"
    t.float "pixel_fraction"
    t.float "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "shortcode"
    t.boolean "featured"
    t.string "title"
    t.string "description"
    t.bigint "user_id"
    t.bigint "stat_id"
    t.bigint "metadata_id"
    t.bigint "color_id"
    t.bigint "label_id"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["color_id"], name: "index_images_on_color_id"
    t.index ["label_id"], name: "index_images_on_label_id"
    t.index ["location_id"], name: "index_images_on_location_id"
    t.index ["metadata_id"], name: "index_images_on_metadata_id"
    t.index ["stat_id"], name: "index_images_on_stat_id"
    t.index ["user_id"], name: "index_images_on_user_id"
  end

  create_table "labels", force: :cascade do |t|
    t.string "description"
    t.float "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.geometry "point", limit: {:srid=>0, :type=>"st_point"}
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "metadata", force: :cascade do |t|
    t.float "aperture"
    t.float "exposure_time"
    t.float "focal_length"
    t.integer "iso"
    t.string "make"
    t.string "model"
    t.string "lens_make"
    t.string "lens_model"
    t.integer "pixel_yd"
    t.integer "pixel_xd"
    t.datetime "capture_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stats", force: :cascade do |t|
    t.integer "views"
    t.integer "downloads"
    t.integer "favorites"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "streams", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.bigint "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_streams_on_users_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "description"
    t.bigint "users_id"
    t.bigint "image_id"
    t.bigint "stream_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["image_id"], name: "index_tags_on_image_id"
    t.index ["stream_id"], name: "index_tags_on_stream_id"
    t.index ["users_id"], name: "index_tags_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "avatar_uuid"
    t.string "email"
    t.string "name"
    t.string "bio"
    t.string "url"
    t.string "twitter"
    t.string "instagram"
    t.string "location"
    t.boolean "featured"
    t.boolean "admin"
    t.bigint "image_id"
    t.bigint "stream_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["image_id"], name: "index_users_on_image_id"
    t.index ["stream_id"], name: "index_users_on_stream_id"
  end

end
