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

ActiveRecord::Schema.define(:version => 20130807041341) do

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

  create_table "amenities", :force => true do |t|
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.boolean  "HandTowel"
    t.boolean  "TeethBrush"
    t.boolean  "BathTowel"
    t.boolean  "Shampoo"
    t.boolean  "Conditioner"
    t.boolean  "BodySoap"
    t.boolean  "Soap"
    t.boolean  "Yukata"
    t.boolean  "Sleepwear"
    t.boolean  "Bathrobe"
  end

  add_index "amenities", ["BathTowel"], :name => "index_amenities_on_BathTowel"
  add_index "amenities", ["Bathrobe"], :name => "index_amenities_on_Bathrobe"
  add_index "amenities", ["BodySoap"], :name => "index_amenities_on_BodySoap"
  add_index "amenities", ["Conditioner"], :name => "index_amenities_on_Conditioner"
  add_index "amenities", ["HandTowel"], :name => "index_amenities_on_HandTowel"
  add_index "amenities", ["Shampoo"], :name => "index_amenities_on_Shampoo"
  add_index "amenities", ["Sleepwear"], :name => "index_amenities_on_Sleepwear"
  add_index "amenities", ["Soap"], :name => "index_amenities_on_Soap"
  add_index "amenities", ["TeethBrush"], :name => "index_amenities_on_TeethBrush"
  add_index "amenities", ["Yukata"], :name => "index_amenities_on_Yukata"

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

  create_table "hotel_amenities", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "hotel_id"
    t.integer  "amenity_id"
  end

  add_index "hotel_amenities", ["amenity_id"], :name => "index_hotel_amenities_on_amenity_id"
  add_index "hotel_amenities", ["hotel_id"], :name => "index_hotel_amenities_on_hotel_id"

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

  create_table "hotel_recreations", :force => true do |t|
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "hotel_id"
    t.integer  "recreation_id"
  end

  add_index "hotel_recreations", ["hotel_id"], :name => "index_hotel_recreations_on_hotel_id"
  add_index "hotel_recreations", ["recreation_id"], :name => "index_hotel_recreations_on_recreation_id"

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
    t.float    "price_ja"
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

  create_table "recreations", :force => true do |t|
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.boolean  "FitnessCenter"
    t.boolean  "GamesRoom"
    t.boolean  "garden"
    t.boolean  "GolfCourseOnSite"
    t.boolean  "GolfCourseWithin3km"
    t.boolean  "HotSpringBath"
    t.boolean  "IndoorPool"
    t.boolean  "Jacuzzi"
    t.boolean  "KidsClub"
    t.boolean  "Massage"
    t.boolean  "OutdoorPool"
    t.boolean  "KidPool"
    t.boolean  "PrivateBeach"
    t.boolean  "Sauna"
    t.boolean  "Spa"
    t.boolean  "SquashCourts"
    t.boolean  "SteamRoom"
    t.boolean  "TennisCourts"
    t.boolean  "WaterSportsMotorized"
    t.boolean  "WaterSportsNonmotorized"
  end

  add_index "recreations", ["FitnessCenter"], :name => "index_recreations_on_FitnessCenter"
  add_index "recreations", ["GamesRoom"], :name => "index_recreations_on_GamesRoom"
  add_index "recreations", ["GolfCourseOnSite"], :name => "index_recreations_on_GolfCourseOnSite"
  add_index "recreations", ["GolfCourseWithin3km"], :name => "index_recreations_on_GolfCourseWithin3km"
  add_index "recreations", ["HotSpringBath"], :name => "index_recreations_on_HotSpringBath"
  add_index "recreations", ["IndoorPool"], :name => "index_recreations_on_IndoorPool"
  add_index "recreations", ["Jacuzzi"], :name => "index_recreations_on_Jacuzzi"
  add_index "recreations", ["KidPool"], :name => "index_recreations_on_KidPool"
  add_index "recreations", ["KidsClub"], :name => "index_recreations_on_KidsClub"
  add_index "recreations", ["Massage"], :name => "index_recreations_on_Massage"
  add_index "recreations", ["OutdoorPool"], :name => "index_recreations_on_OutdoorPool"
  add_index "recreations", ["PrivateBeach"], :name => "index_recreations_on_PrivateBeach"
  add_index "recreations", ["Sauna"], :name => "index_recreations_on_Sauna"
  add_index "recreations", ["Spa"], :name => "index_recreations_on_Spa"
  add_index "recreations", ["SquashCourts"], :name => "index_recreations_on_SquashCourts"
  add_index "recreations", ["SteamRoom"], :name => "index_recreations_on_SteamRoom"
  add_index "recreations", ["TennisCourts"], :name => "index_recreations_on_TennisCourts"
  add_index "recreations", ["WaterSportsMotorized"], :name => "index_recreations_on_WaterSportsMotorized"
  add_index "recreations", ["WaterSportsNonmotorized"], :name => "index_recreations_on_WaterSportsNonmotorized"
  add_index "recreations", ["garden"], :name => "index_recreations_on_garden"

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       :limit => 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

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
