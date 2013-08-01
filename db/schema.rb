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

ActiveRecord::Schema.define(:version => 20130731084022) do

  create_table "administrators", :force => true do |t|
    t.string   "admin_name"
    t.string   "admin_email"
    t.string   "admin_password_hash"
    t.string   "admin_password_salt"
    t.string   "admin_remember_token"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "administrators", ["admin_remember_token"], :name => "index_administrators_on_admin_remember_token"

  create_table "areas", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "state"
    t.string   "city"
    t.string   "district"
  end

  add_index "areas", ["city"], :name => "index_areas_on_city"
  add_index "areas", ["district"], :name => "index_areas_on_district"
  add_index "areas", ["state"], :name => "index_areas_on_state"

  create_table "facilities", :force => true do |t|
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.boolean  "RoomService24hr"
    t.boolean  "AirportTransfer"
    t.boolean  "BabySitting"
    t.boolean  "BarPub"
    t.boolean  "BicycleRental"
    t.boolean  "BusinessCenter"
    t.boolean  "Casino"
    t.boolean  "CoffeeShop"
    t.boolean  "DisabledFacilities"
    t.boolean  "Elevator"
    t.boolean  "ExecutiveFloor"
    t.boolean  "FamilyRoom"
    t.boolean  "LaundryService"
    t.boolean  "MeetingFacilities"
    t.boolean  "NightClub"
    t.boolean  "PetsAllowed"
    t.boolean  "PoolsideBar"
    t.boolean  "Restaurant"
    t.boolean  "RoomService"
    t.boolean  "SafetyBox"
    t.boolean  "Salon"
    t.boolean  "Shops"
    t.boolean  "ShuttleService"
    t.boolean  "SmokingArea"
    t.boolean  "Tours"
    t.boolean  "WifiPublicAreas"
    t.boolean  "CreaditCard"
  end

  add_index "facilities", ["AirportTransfer"], :name => "index_facilities_on_AirportTransfer"
  add_index "facilities", ["BabySitting"], :name => "index_facilities_on_BabySitting"
  add_index "facilities", ["BarPub"], :name => "index_facilities_on_BarPub"
  add_index "facilities", ["BicycleRental"], :name => "index_facilities_on_BicycleRental"
  add_index "facilities", ["BusinessCenter"], :name => "index_facilities_on_BusinessCenter"
  add_index "facilities", ["Casino"], :name => "index_facilities_on_Casino"
  add_index "facilities", ["CoffeeShop"], :name => "index_facilities_on_CoffeeShop"
  add_index "facilities", ["CreaditCard"], :name => "index_facilities_on_CreaditCard"
  add_index "facilities", ["DisabledFacilities"], :name => "index_facilities_on_DisabledFacilities"
  add_index "facilities", ["Elevator"], :name => "index_facilities_on_Elevator"
  add_index "facilities", ["ExecutiveFloor"], :name => "index_facilities_on_ExecutiveFloor"
  add_index "facilities", ["FamilyRoom"], :name => "index_facilities_on_FamilyRoom"
  add_index "facilities", ["LaundryService"], :name => "index_facilities_on_LaundryService"
  add_index "facilities", ["MeetingFacilities"], :name => "index_facilities_on_MeetingFacilities"
  add_index "facilities", ["NightClub"], :name => "index_facilities_on_NightClub"
  add_index "facilities", ["PetsAllowed"], :name => "index_facilities_on_PetsAllowed"
  add_index "facilities", ["PoolsideBar"], :name => "index_facilities_on_PoolsideBar"
  add_index "facilities", ["Restaurant"], :name => "index_facilities_on_Restaurant"
  add_index "facilities", ["RoomService"], :name => "index_facilities_on_RoomService"
  add_index "facilities", ["RoomService24hr"], :name => "index_facilities_on_RoomService24hr"
  add_index "facilities", ["Salon"], :name => "index_facilities_on_Salon"
  add_index "facilities", ["Shops"], :name => "index_facilities_on_Shops"
  add_index "facilities", ["ShuttleService"], :name => "index_facilities_on_ShuttleService"
  add_index "facilities", ["SmokingArea"], :name => "index_facilities_on_SmokingArea"
  add_index "facilities", ["Tours"], :name => "index_facilities_on_Tours"
  add_index "facilities", ["WifiPublicAreas"], :name => "index_facilities_on_WifiPublicAreas"

  create_table "hotel_areas", :force => true do |t|
    t.integer  "hotel_id"
    t.integer  "area_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "hotel_areas", ["area_id"], :name => "index_hotel_areas_on_area_id"
  add_index "hotel_areas", ["hotel_id"], :name => "index_hotel_areas_on_hotel_id"

  create_table "hotel_facilities", :force => true do |t|
    t.integer  "hotel_id"
    t.integer  "facility_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "hotel_facilities", ["facility_id"], :name => "index_hotel_facilities_on_facility_id"
  add_index "hotel_facilities", ["hotel_id"], :name => "index_hotel_facilities_on_hotel_id"

  create_table "hotels", :force => true do |t|
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "url"
    t.string   "name_en"
    t.string   "name_th"
    t.string   "name_ms"
    t.string   "name_vi"
    t.string   "name_id"
    t.string   "name_ja"
    t.string   "description"
    t.integer  "price_usd"
    t.integer  "price_thb"
    t.integer  "price_myr"
    t.integer  "price_vnd"
    t.integer  "price_php"
    t.integer  "price_idr"
    t.string   "post_code"
    t.float    "lat"
    t.float    "lng"
    t.boolean  "free_wifi"
    t.boolean  "charged_wifi"
    t.boolean  "parking"
    t.string   "link_ikkyu"
    t.string   "link_jyaran"
    t.string   "link_rurubu"
    t.string   "link_jtb"
    t.string   "link_rakuten"
    t.string   "link_agoda"
    t.string   "link_expedia"
    t.string   "link_hotelscom"
  end

  add_index "hotels", ["charged_wifi"], :name => "index_hotels_on_charged_wifi"
  add_index "hotels", ["description"], :name => "index_hotels_on_description"
  add_index "hotels", ["free_wifi"], :name => "index_hotels_on_free_wifi"
  add_index "hotels", ["lat"], :name => "index_hotels_on_lat"
  add_index "hotels", ["link_agoda"], :name => "index_hotels_on_link_agoda"
  add_index "hotels", ["link_expedia"], :name => "index_hotels_on_link_expedia"
  add_index "hotels", ["link_hotelscom"], :name => "index_hotels_on_link_hotelscom"
  add_index "hotels", ["link_ikkyu"], :name => "index_hotels_on_link_ikkyu"
  add_index "hotels", ["link_jtb"], :name => "index_hotels_on_link_jtb"
  add_index "hotels", ["link_jyaran"], :name => "index_hotels_on_link_jyaran"
  add_index "hotels", ["link_rakuten"], :name => "index_hotels_on_link_rakuten"
  add_index "hotels", ["link_rurubu"], :name => "index_hotels_on_link_rurubu"
  add_index "hotels", ["lng"], :name => "index_hotels_on_lng"
  add_index "hotels", ["name_en"], :name => "index_hotels_on_name_en"
  add_index "hotels", ["name_id"], :name => "index_hotels_on_name_id"
  add_index "hotels", ["name_ja"], :name => "index_hotels_on_name_ja"
  add_index "hotels", ["name_ms"], :name => "index_hotels_on_name_ms"
  add_index "hotels", ["name_th"], :name => "index_hotels_on_name_th"
  add_index "hotels", ["name_vi"], :name => "index_hotels_on_name_vi"
  add_index "hotels", ["parking"], :name => "index_hotels_on_parking"
  add_index "hotels", ["post_code"], :name => "index_hotels_on_post_code"
  add_index "hotels", ["price_idr"], :name => "index_hotels_on_price_idr"
  add_index "hotels", ["price_myr"], :name => "index_hotels_on_price_myr"
  add_index "hotels", ["price_php"], :name => "index_hotels_on_price_php"
  add_index "hotels", ["price_thb"], :name => "index_hotels_on_price_thb"
  add_index "hotels", ["price_usd"], :name => "index_hotels_on_price_usd"
  add_index "hotels", ["price_vnd"], :name => "index_hotels_on_price_vnd"
  add_index "hotels", ["url"], :name => "index_hotels_on_url"

  create_table "photos", :force => true do |t|
    t.integer  "photoable_id"
    t.string   "photoable_type"
    t.string   "image"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "name"
  end

  add_index "photos", ["name"], :name => "index_photos_on_name"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "remember_token"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.date     "birthday"
    t.string   "sex"
    t.string   "job"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
