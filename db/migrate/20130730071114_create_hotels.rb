class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|

      t.timestamps
    end
    add_column :hotels, :url, :string
    add_column :hotels, :name_en, :string
    add_column :hotels, :name_th, :string
    add_column :hotels, :name_ms, :string
    add_column :hotels, :name_vi, :string
    add_column :hotels, :name_id, :string
    add_column :hotels, :name_ja, :string
    add_column :hotels, :description, :string
    add_column :hotels, :price_usd, :integer
    add_column :hotels, :price_thb, :integer
    add_column :hotels, :price_myr, :integer
    add_column :hotels, :price_vnd, :integer
    add_column :hotels, :price_php, :integer
    add_column :hotels, :price_idr, :integer
    add_column :hotels, :post_code, :string
    
    add_index  :hotels, :url
    add_index  :hotels, :name_en
    add_index  :hotels, :name_th
    add_index  :hotels, :name_ms
    add_index  :hotels, :name_vi
    add_index  :hotels, :name_id
    add_index  :hotels, :name_ja
    add_index  :hotels, :description
    add_index  :hotels, :price_usd
    add_index  :hotels, :price_thb
    add_index  :hotels, :price_myr
    add_index  :hotels, :price_vnd
    add_index  :hotels, :price_php
    add_index  :hotels, :price_idr
    add_index  :hotels, :post_code

  end
end
