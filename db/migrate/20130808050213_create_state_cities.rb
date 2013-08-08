class CreateStateCities < ActiveRecord::Migration
  def change
    create_table :state_cities do |t|

      t.timestamps
    end
    add_column :state_cities, :state_id, :integer
    add_column :state_cities, :city_id,  :integer
    add_index  :state_cities, :state_id
    add_index  :state_cities, :city_id
  end
end
