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

ActiveRecord::Schema.define(:version => 20140830162116) do

  create_table "chats", :force => true do |t|
    t.string   "from"
    t.string   "message"
    t.string   "time"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "eventdates", :force => true do |t|
    t.date     "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gesparticipants", :force => true do |t|
    t.string   "participanttype_code"
    t.integer  "reg_id"
    t.string   "rfid"
    t.string   "hotelstatus_code"
    t.string   "transportstatus_code"
    t.string   "committeestatus_code"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.string   "registrationstatus_code"
  end

  create_table "hotels", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "description"
    t.string   "phone"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "nationalities", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "notifystatuses", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "participantanswers", :force => true do |t|
    t.integer  "participant_id"
    t.integer  "pollanswer_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "poll_id"
  end

  create_table "participanttypes", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pollanswers", :force => true do |t|
    t.string   "answer"
    t.integer  "poll_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "polls", :force => true do |t|
    t.string   "question"
    t.integer  "presenter_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "pollstatus_code"
    t.integer  "track_id"
  end

  create_table "pollstatuses", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "presenterfiles", :force => true do |t|
    t.integer  "presenter_id"
    t.string   "files"
    t.integer  "reg_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "presenters", :force => true do |t|
    t.integer  "gesparticipant_id"
    t.string   "identification"
    t.string   "username"
    t.string   "password"
    t.string   "password_salt"
    t.string   "email"
    t.string   "dob"
    t.string   "details"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "registration_id"
  end

  create_table "registrations", :force => true do |t|
    t.string   "fullname"
    t.string   "noic"
    t.string   "phone"
    t.string   "email"
    t.string   "image"
    t.string   "nationality_code"
    t.string   "hotel_code"
    t.string   "participanttype_code"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "title"
    t.string   "organization"
    t.string   "tag_code"
  end

  create_table "registrationstatuses", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rooms", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "capacity"
    t.integer  "current"
    t.string   "img"
  end

  create_table "slots", :force => true do |t|
    t.time     "start"
    t.time     "end"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
    t.string   "code"
  end

  create_table "trackattendances", :force => true do |t|
    t.integer  "track_id"
    t.string   "rfid"
    t.datetime "first_in"
    t.datetime "last_out"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.datetime "out"
  end

  create_table "trackroles", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tracks", :force => true do |t|
    t.string   "theme"
    t.string   "description"
    t.string   "room_code"
    t.string   "trackstatus_code"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "slot_code"
    t.date     "date"
    t.string   "eventdate_id"
    t.string   "tracktype_code"
    t.integer  "capacity"
  end

  create_table "trackspeakers", :force => true do |t|
    t.integer  "presenter_id"
    t.integer  "track_id"
    t.string   "trackrole_code"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "trackstatuses", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tracktypes", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "password_salt"
    t.string   "role_code"
    t.string   "push_notification"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "usefor"
  end

end
