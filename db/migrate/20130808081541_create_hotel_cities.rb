class CreateHotelCities < ActiveRecord::Migration
  def change
    create_table :hotel_cities do |t|

      t.timestamps
    end
    add_column :hotel_cities, :hotel_id, :integer
    add_column :hotel_cities, :city_id, :integer
    add_index  :hotel_cities, :hotel_id
    add_index  :hotel_cities, :city_id
  end
end
