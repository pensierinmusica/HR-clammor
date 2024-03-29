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

ActiveRecord::Schema.define(:version => 6) do

  create_table "comments", :force => true do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.string  "content"
  end

  create_table "groups", :force => true do |t|
    t.string "name"
    t.string "motto"
  end

  create_table "posts", :force => true do |t|
    t.integer "user_id"
    t.string  "title"
    t.string  "content"
  end

  create_table "statuses", :force => true do |t|
    t.integer "user_id"
    t.string  "status",  :default => "I Just joined Clammor!"
  end

  create_table "subscriptions", :force => true do |t|
    t.integer "user_id"
    t.integer "group_id"
    t.string  "subscription"
  end

  create_table "users", :force => true do |t|
    t.string "email"
    t.string "name"
  end

end
