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

ActiveRecord::Schema.define(version: 2018_12_18_205718) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointment_items", force: :cascade do |t|
    t.integer "item_id"
    t.integer "appointment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "appointments", force: :cascade do |t|
    t.datetime "time"
    t.string "focus"
    t.integer "trainer_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "info"
    t.integer "rating"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "protein", precision: 5, scale: 2
    t.decimal "carbohydrates", precision: 5, scale: 2
    t.decimal "fat", precision: 5, scale: 2
    t.decimal "magnesium", precision: 5, scale: 2
    t.decimal "iron", precision: 5, scale: 2
    t.decimal "zinc", precision: 5, scale: 2
    t.decimal "folate", precision: 5, scale: 2
    t.decimal "vitamin_d", precision: 5, scale: 2
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meal_ingredients", force: :cascade do |t|
    t.integer "ingredient_id"
    t.integer "meal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meals", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "recipe_instructions"
    t.string "meal_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trainer_meals", force: :cascade do |t|
    t.integer "user_id"
    t.integer "meal_id"
    t.integer "trainer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trainer_tags", force: :cascade do |t|
    t.integer "tag_id"
    t.integer "trainer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trainer_workouts", force: :cascade do |t|
    t.integer "trainer_id"
    t.integer "workout_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trainers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.date "birthdate"
    t.string "gender"
    t.string "avatar"
    t.text "bio"
    t.integer "rating"
    t.string "video"
    t.boolean "nutritionist"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location"
  end

  create_table "user_workouts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "workout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "times_done"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.date "birthdate"
    t.string "gender"
    t.integer "weight"
    t.integer "height"
    t.string "avatar"
    t.string "bio"
    t.string "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workouts", force: :cascade do |t|
    t.string "name"
    t.time "time"
    t.string "image"
    t.text "description"
    t.string "level"
    t.string "category"
    t.string "video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
