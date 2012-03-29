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

ActiveRecord::Schema.define(:version => 20120324170841) do

  create_table "accounts", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "external_links", :force => true do |t|
    t.string   "href"
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "homes", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "list_items", :force => true do |t|
    t.integer  "list_id"
    t.string   "title"
    t.text     "description"
    t.text     "location"
    t.integer  "template_id"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "list_items", ["list_id"], :name => "index_list_items_on_list_id"
  add_index "list_items", ["template_id"], :name => "index_list_items_on_template_id"

  create_table "list_links", :force => true do |t|
    t.integer  "list_id"
    t.integer  "external_link_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "list_links", ["external_link_id"], :name => "index_list_links_on_external_link_id"
  add_index "list_links", ["list_id"], :name => "index_list_links_on_list_id"

  create_table "lists", :force => true do |t|
    t.string   "name"
    t.integer  "template_id"
    t.text     "info"
    t.integer  "parent_id"
    t.integer  "link_list_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lists", ["template_id"], :name => "index_lists_on_template_id"

  create_table "progresses", :force => true do |t|
    t.integer  "list_id"
    t.integer  "user_id"
    t.text     "complete"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "progresses", ["list_id"], :name => "index_progresses_on_list_id"
  add_index "progresses", ["user_id"], :name => "index_progresses_on_user_id"

  create_table "social_links", :force => true do |t|
    t.integer  "user_id"
    t.string   "service_name"
    t.string   "identifier"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "social_links", ["user_id"], :name => "index_social_links_on_user_id"

  create_table "tag_icons", :force => true do |t|
    t.string   "tag"
    t.string   "icon"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "templates", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "avatar"
    t.string   "homepage"
    t.boolean  "admin"
    t.boolean  "public"
    t.string   "email",                  :default => "", :null => false
    t.string   "password",               :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "password_salt"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
