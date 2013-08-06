class AddJapriceToHotel < ActiveRecord::Migration
  def change
     add_column :hotels, :price_ja, :float
  end
end
