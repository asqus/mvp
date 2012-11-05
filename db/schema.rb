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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121105045107) do

  create_table "officials", :force => true do |t|
    t.string   "position"
    t.string   "name"
    t.integer  "district_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "poll_options_sets", :force => true do |t|
    t.text     "options"
    t.string   "set_type"
    t.integer  "num_options"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "polls", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "poll_options_set_id"
  end

  create_table "questions", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  add_index "questions", ["user_id", "created_at"], :name => "index_questions_on_user_id_and_created_at"

  create_table "responses", :force => true do |t|
    t.text     "body"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "question_id"
    t.integer  "user_id"
  end

  add_index "responses", ["question_id", "created_at"], :name => "index_responses_on_question_id_and_created_at"
  add_index "responses", ["user_id", "created_at"], :name => "index_responses_on_user_id_and_created_at"

  create_table "uq_relations", :force => true do |t|
    t.integer  "user_id"
    t.integer  "question_id"
    t.boolean  "yaynay"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "uq_relations", ["question_id", "user_id"], :name => "index_uq_relations_on_question_id_and_user_id", :unique => true
  add_index "uq_relations", ["question_id"], :name => "index_uq_relations_on_question_id"
  add_index "uq_relations", ["user_id"], :name => "index_uq_relations_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.date     "birthdate"
    t.string   "email"
    t.string   "address"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

  create_table "votes", :force => true do |t|
    t.integer  "response"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
