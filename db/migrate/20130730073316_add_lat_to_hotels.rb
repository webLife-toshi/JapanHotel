class AddLatToHotels < ActiveRecord::Migration
  def change
    add_column :hotels, :lat, :float
    add_column :hotels, :lng, :float
    add_column :hotels, :free_wifi, :boolean
    add_column :hotels, :charged_wifi, :boolean
    add_column :hotels, :parking, :boolean
  end
end
