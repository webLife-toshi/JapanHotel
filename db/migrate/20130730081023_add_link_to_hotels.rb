class AddLinkToHotels < ActiveRecord::Migration
  def change
    add_column :hotels, :link_ikkyu, :string
    add_column :hotels, :link_jyaran, :string
    add_column :hotels, :link_rurubu, :string
    add_column :hotels, :link_jtb,    :string
    add_column :hotels, :link_rakuten, :string
    add_column :hotels, :link_agoda,   :string
    add_column :hotels, :link_expedia, :string
    add_column :hotels, :link_hotelscom, :string

    add_index  :hotels, :link_ikkyu
    add_index  :hotels, :link_jyaran
    add_index  :hotels, :link_rurubu
    add_index  :hotels, :link_jtb
    add_index  :hotels, :link_rakuten
    add_index  :hotels, :link_agoda
    add_index  :hotels, :link_expedia
    add_index  :hotels, :link_hotelscom
  end
end
