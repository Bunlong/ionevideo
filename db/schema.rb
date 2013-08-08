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

ActiveRecord::Schema.define(:version => 20130316190724) do

  create_table "movies", :force => true do |t|
    t.string   "title",      :null => false
    t.string   "url",        :null => false
    t.integer  "type_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "musics", :force => true do |t|
    t.string   "title",      :null => false
    t.string   "url",        :null => false
    t.integer  "singer_id",  :null => false
    t.integer  "type_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "singers", :force => true do |t|
    t.string   "name",                            :null => false
    t.string   "gender",             :limit => 7, :null => false
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "types", :force => true do |t|
    t.string   "v_type",     :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
