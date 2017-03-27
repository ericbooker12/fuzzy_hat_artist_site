
ActiveRecord::Schema.define(version: 20170316232611) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collections", force: :cascade do |t|
    t.string   "name"
    t.boolean  "archive",    default: false
    t.integer  "thumbnail"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "gallery_id"
    t.index ["gallery_id"], name: "index_collections_on_gallery_id", using: :btree
  end

  create_table "galleries", force: :cascade do |t|
    t.string   "name"
    t.boolean  "archive",    default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_galleries_on_user_id", using: :btree
  end

  create_table "items", force: :cascade do |t|
    t.string   "title"
    t.integer  "length"
    t.integer  "width"
    t.integer  "height"
    t.integer  "collection_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.index ["collection_id"], name: "index_items_on_collection_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "collections", "galleries"
  add_foreign_key "galleries", "users"
  add_foreign_key "items", "collections"
end
