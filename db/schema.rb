ActiveRecord::Schema.define(version: 20150325031050) do

  create_table "actions", force: true do |t|
    t.string   "stage"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diary_entries", force: true do |t|
    t.string   "uuid"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feelings", force: true do |t|
    t.string   "stage"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reasons", force: true do |t|
    t.string   "stage"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
