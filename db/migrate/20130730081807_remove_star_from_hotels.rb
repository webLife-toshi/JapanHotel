class RemoveStarFromHotels < ActiveRecord::Migration
  def up
    remove_column :hotels, :star
    remove_column :hotels, :hoteltype
  end

  def down
    add_column :hotels, :star, :integer
    add_column :hotels, :hoteltype, :integer
  end
end
