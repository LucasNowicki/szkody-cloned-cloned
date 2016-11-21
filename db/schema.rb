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

ActiveRecord::Schema.define(version: 20161121111543) do

  create_table "posts", force: :cascade do |t|
    t.string   "mark"
    t.string   "model"
    t.string   "year"
    t.string   "registration"
    t.string   "owner"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
    t.string   "oc"
    t.string   "partial"
    t.string   "private"
    t.string   "after"
    t.string   "credit"
    t.string   "poland"
    t.string   "pole"
    t.string   "attorney"
    t.string   "sold"
    t.string   "invoice"
    t.string   "deal"
    t.string   "majchrzak"
    t.string   "pcwo"
    t.string   "solace"
    t.string   "recommendation"
    t.string   "offer"
    t.string   "comment"
    t.boolean  "has_offer",             default: false
    t.string   "contract"
    t.string   "dealdate"
    t.string   "gender"
    t.string   "name"
    t.string   "card"
    t.string   "authority"
    t.string   "pesel"
    t.string   "address"
    t.string   "vin"
    t.string   "damagedate"
    t.string   "insurer"
    t.string   "damagenumber"
    t.string   "amount"
    t.string   "gros"
    t.string   "payment"
    t.string   "place"
    t.string   "bankaccount"
    t.string   "dealtype"
    t.string   "phone"
    t.string   "email"
  end

end
