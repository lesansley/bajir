# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150914101621) do

  create_table "procedures", force: :cascade do |t|
    t.string   "tnumber"
    t.date     "procedureDate"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "questionnaire_templates", force: :cascade do |t|
    t.string   "questionnaireName"
    t.text     "questionnaireDefinition"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "questionnaires", force: :cascade do |t|
    t.string   "username"
    t.string   "type"
    t.date     "date"
    t.text     "score"
    t.integer  "procedure_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "questionnaires", ["procedure_id"], name: "index_questionnaires_on_procedure_id"

  create_table "surveytemplates", force: :cascade do |t|
    t.string   "surveyName"
    t.text     "surveyDefinition"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
