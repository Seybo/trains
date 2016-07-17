ActiveRecord::Schema.define(version: 201_607_120_539_27) do
  enable_extension "plpgsql"

  create_table "routes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trains", force: :cascade do |t|
    t.string   "train_type"
    t.integer  "speed"
    t.integer  "coaches_number"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "route_id"
    t.integer  "last_station_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "role"
  end
end
