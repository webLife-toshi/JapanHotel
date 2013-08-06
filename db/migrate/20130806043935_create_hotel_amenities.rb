class CreateHotelAmenities < ActiveRecord::Migration
  def change
    create_table :hotel_amenities do |t|

      t.timestamps
    end
    add_column :hotel_amenities, :hotel_id, :integer
    add_column :hotel_amenities, :amenity_id, :integer
    add_index  :hotel_amenities, :hotel_id
    add_index  :hotel_amenities, :amenity_id
  end
end
