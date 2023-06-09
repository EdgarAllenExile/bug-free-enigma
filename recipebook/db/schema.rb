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

ActiveRecord::Schema[7.0].define(version: 2023_04_27_034219) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredients", force: :cascade do |t|
    t.text "title"
    t.text "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients_quantities", id: false, force: :cascade do |t|
    t.integer "ingredient_id"
    t.integer "quantity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients_recipes", id: false, force: :cascade do |t|
    t.integer "ingredient_id"
    t.integer "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.text "note_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes_recipes", id: false, force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "note_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quantities", force: :cascade do |t|
    t.text "unit"
    t.text "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quantities_recipes", id: false, force: :cascade do |t|
    t.integer "quantity_id"
    t.integer "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.text "title", default: "Not Specified"
    t.integer "user_id"
    t.text "category", default: "Not Specified"
    t.text "cusine", default: "Not Specified"
    t.text "dietary", default: "Not Specified"
    t.integer "cook_time", default: 10
    t.integer "difficulty", default: 1
    t.integer "serves", default: 1
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes_steps", id: false, force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "step_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "steps", force: :cascade do |t|
    t.integer "step_no"
    t.text "process", default: "Not Specified"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.string "password_digest"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
