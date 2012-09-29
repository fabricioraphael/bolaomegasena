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

ActiveRecord::Schema.define(:version => 20120929025326) do

  create_table "bets", :force => true do |t|
    t.integer  "user_id"
    t.string   "numbers"
    t.date     "bet_date"
    t.boolean  "approved"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bets_games", :id => false, :force => true do |t|
    t.integer "bet_id"
    t.integer "game_id"
  end

  create_table "games", :force => true do |t|
    t.integer  "count"
    t.integer  "bets_numbers"
    t.date     "game_date"
    t.integer  "contest_number"
    t.float    "award"
    t.string   "numbers_drawn"
    t.boolean  "success"
    t.text     "notes"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "nome",                   :default => ""
    t.date     "birthday"
    t.string   "phone1",                 :default => ""
    t.string   "phone2",                 :default => ""
    t.string   "cellphone",              :default => ""
    t.string   "cep",                    :default => ""
    t.string   "address",                :default => ""
    t.string   "complement",             :default => ""
    t.float    "leftover",               :default => 0.0
    t.string   "agency",                 :default => ""
    t.string   "account",                :default => ""
    t.string   "bank",                   :default => ""
    t.string   "state",                  :default => ""
    t.string   "country",                :default => ""
    t.string   "email",                  :default => "",  :null => false
    t.string   "encrypted_password",     :default => "",  :null => false
    t.string   "role"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_ipn_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "authentication_token"
    t.datetime "created_at",                              :null => false
    t.datetime "updated_at",                              :null => false
  end

  add_index "users", ["authentication_token"], :name => "index_users_on_authentication_token", :unique => true
  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
