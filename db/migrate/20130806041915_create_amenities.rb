class CreateAmenities < ActiveRecord::Migration
  def change
    create_table :amenities do |t|

      t.timestamps
    end
    add_column :amenities, :HandTowel,  :boolean
    add_column :amenities, :TeethBrush, :boolean
    add_column :amenities, :BathTowel,  :boolean
    add_column :amenities, :Shampoo,    :boolean
    add_column :amenities, :Conditioner, :boolean
    add_column :amenities, :BodySoap, :boolean
    add_column :amenities, :Soap, :boolean
    add_column :amenities, :Yukata, :boolean
    add_column :amenities, :Sleepwear, :boolean
    add_column :amenities, :Bathrobe, :boolean
  end
end
