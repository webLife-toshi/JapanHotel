class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|

      t.timestamps
    end
    add_column :facilities, :RoomService24hr, :boolean
    add_column :facilities, :AirportTransfer, :boolean
    add_column :facilities, :BabySitting, :boolean
    add_column :facilities, :BarPub, :boolean
    add_column :facilities, :BicycleRental, :boolean
    add_column :facilities, :BusinessCenter, :boolean
    add_column :facilities, :Casino, :boolean
    add_column :facilities, :CoffeeShop, :boolean
    add_column :facilities, :DisabledFacilities, :boolean
    add_column :facilities, :Elevator, :boolean
    add_column :facilities, :ExecutiveFloor, :boolean
    add_column :facilities, :FamilyRoom, :boolean
    add_column :facilities, :LaundryService, :boolean
    add_column :facilities, :MeetingFacilities, :boolean
    add_column :facilities, :NightClub, :boolean
    add_column :facilities, :PetsAllowed, :boolean
    add_column :facilities, :PoolsideBar, :boolean
    add_column :facilities, :Restaurant,  :boolean
    add_column :facilities, :RoomService, :boolean
    add_column :facilities, :SafetyBox, :boolean
    add_column :facilities, :Salon, :boolean
    add_column :facilities, :Shops, :boolean
    add_column :facilities, :ShuttleService, :boolean
    add_column :facilities, :SmokingArea, :boolean
    add_column :facilities, :Tours, :boolean
    add_column :facilities, :WifiPublicAreas, :boolean
    add_column :facilities, :CreaditCard, :boolean

    add_index  :facilities, :RoomService24hr
    add_index  :facilities, :AirportTransfer
    add_index  :facilities, :BabySitting
    add_index  :facilities, :BarPub
    add_index  :facilities, :BicycleRental
    add_index  :facilities, :BusinessCenter
    add_index  :facilities, :Casino
    add_index  :facilities, :CoffeeShop
    add_index  :facilities, :DisabledFacilities
    add_index  :facilities, :Elevator
    add_index  :facilities, :ExecutiveFloor
    add_index  :facilities, :FamilyRoom
    add_index  :facilities, :LaundryService
    add_index  :facilities, :MeetingFacilities
    add_index  :facilities, :NightClub
    add_index  :facilities, :PetsAllowed
    add_index  :facilities, :PoolsideBar
    add_index  :facilities, :Restaurant
    add_index  :facilities, :RoomService
    add_index  :facilities, :Salon
    add_index  :facilities, :Shops
    add_index  :facilities, :ShuttleService
    add_index  :facilities, :SmokingArea
    add_index  :facilities, :Tours
    add_index  :facilities, :WifiPublicAreas
    add_index  :facilities, :CreaditCard

  end
end
