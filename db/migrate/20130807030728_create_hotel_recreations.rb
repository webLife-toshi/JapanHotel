class CreateHotelRecreations < ActiveRecord::Migration
  def change
    create_table :hotel_recreations do |t|

      t.timestamps
    end
    add_column :hotel_recreations, :hotel_id, :integer
    add_column :hotel_recreations, :recreation_id, :integer
    add_index  :hotel_recreations, :hotel_id
    add_index  :hotel_recreations, :recreation_id
  end
end
