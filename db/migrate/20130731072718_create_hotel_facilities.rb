class CreateHotelFacilities < ActiveRecord::Migration
  def change
    create_table :hotel_facilities do |t|
      t.integer :hotel_id
      t.integer :facility_id

      t.timestamps
    end
    add_index :hotel_facilities, :hotel_id
    add_index :hotel_facilities, :facility_id
  end
end
