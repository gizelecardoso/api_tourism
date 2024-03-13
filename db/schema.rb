# frozen_string_literal: true

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

ActiveRecord::Schema[7.1].define(version: 20_240_313_142_656) do
  create_table 'interesting_points', charset: 'utf8mb4', collation: 'utf8mb4_0900_ai_ci', force: :cascade do |t|
    t.string 'name'
    t.string 'category'
    t.integer 'rank'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'place_id', null: false
    t.index ['place_id'], name: 'index_interesting_points_on_place_id'
  end

  create_table 'places', charset: 'utf8mb4', collation: 'utf8mb4_0900_ai_ci', force: :cascade do |t|
    t.string 'name'
    t.string 'country'
    t.string 'population'
    t.string 'lang'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'weathers', charset: 'utf8mb4', collation: 'utf8mb4_0900_ai_ci', force: :cascade do |t|
    t.float 'temp'
    t.float 'temp_min'
    t.float 'temp_max'
    t.float 'humidity'
    t.string 'description'
    t.date 'weather_date'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'place_id', null: false
    t.index ['place_id'], name: 'index_weathers_on_place_id'
  end

  add_foreign_key 'interesting_points', 'places'
  add_foreign_key 'weathers', 'places'
end
