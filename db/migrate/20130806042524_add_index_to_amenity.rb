class AddIndexToAmenity < ActiveRecord::Migration
  def change
    add_index :amenities, :HandTowel
    add_index :amenities, :TeethBrush
    add_index :amenities, :BathTowel
    add_index :amenities, :Shampoo
    add_index :amenities, :Conditioner
    add_index :amenities, :BodySoap
    add_index :amenities, :Soap
    add_index :amenities, :Yukata
    add_index :amenities, :Sleepwear
    add_index :amenities, :Bathrobe
  end
end
