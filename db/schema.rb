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

ActiveRecord::Schema.define(version: 20170612202757) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "adminpack"

  create_table "active_admin_comments", id: :serial, force: :cascade do |t|
    t.string "namespace", limit: 255
    t.text "body"
    t.string "resource_id", limit: 255, null: false
    t.string "resource_type", limit: 255, null: false
    t.integer "author_id"
    t.string "author_type", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", id: :serial, force: :cascade do |t|
    t.string "email", limit: 255, default: "", null: false
    t.string "encrypted_password", limit: 255, default: "", null: false
    t.string "reset_password_token", limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "attributevaluenumber", id: false, force: :cascade do |t|
    t.bigint "id"
    t.datetime "time"
    t.bigint "deviceattributeid"
    t.float "value"
  end

  create_table "attributevaluestring", id: false, force: :cascade do |t|
    t.bigint "id"
    t.datetime "time"
    t.bigint "deviceattributeid"
    t.text "value"
    t.index ["id"], name: "idx_83142_attributevaluestring_pkey", unique: true
  end

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "delayed_jobs", id: :serial, force: :cascade do |t|
    t.integer "priority", default: 0, null: false
    t.integer "attempts", default: 0, null: false
    t.text "handler", null: false
    t.text "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string "locked_by", limit: 255
    t.string "queue", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["priority", "run_at"], name: "delayed_jobs_priority"
  end

  create_table "deviceattribute", id: false, force: :cascade do |t|
    t.bigint "id"
    t.text "deviceid"
    t.text "attributename"
    t.text "type"
    t.boolean "discrete"
    t.datetime "lastupdate"
    t.text "lastvalue"
    t.index ["attributename"], name: "idx_83136_deviceattributeattributename"
    t.index ["deviceid", "attributename"], name: "idx_83136_deviceattributedeviceidattributename"
    t.index ["deviceid"], name: "idx_83136_deviceattributedeviceid"
    t.index ["id"], name: "idx_83136_deviceattribute_pkey", unique: true
  end

  create_table "message", id: false, force: :cascade do |t|
    t.bigint "id"
    t.datetime "time"
    t.bigint "level"
    t.text "tags"
    t.text "text"
    t.index ["id"], name: "idx_83130_message_pkey", unique: true
    t.index ["time"], name: "idx_83130_message_time_index"
  end

  create_table "mypages", id: :serial, force: :cascade do |t|
    t.string "title", limit: 255
    t.string "permalink", limit: 255
    t.text "content"
    t.text "compiled_content"
    t.integer "parent_id"
    t.integer "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "project_id"
  end

  create_table "projects", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "sub_dir"
    t.string "base_dir"
    t.string "site_name"
    t.string "site_description"
    t.string "theme"
    t.string "main_page"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sqlite_stat1", id: false, force: :cascade do |t|
    t.text "tbl"
    t.text "idx"
    t.text "stat"
  end

end
