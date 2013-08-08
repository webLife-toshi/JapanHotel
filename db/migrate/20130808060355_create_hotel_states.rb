class CreateHotelStates < ActiveRecord::Migration
  def change
    create_table :hotel_states do |t|

      t.timestamps
    end
    add_column :hotel_states, :hotel_id, :integer
    add_column :hotel_states, :state_id, :integer
    add_index  :hotel_states, :hotel_id
    add_index  :hotel_states, :state_id
  end
end
