class AddIndexToHotels < ActiveRecord::Migration
  def change
    add_index :hotels, :lat
    add_index :hotels, :lng
    add_index :hotels, :free_wifi
    add_index :hotels, :charged_wifi
    add_index :hotels, :parking
  end
end
