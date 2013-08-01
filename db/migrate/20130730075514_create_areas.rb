class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|

      t.timestamps
    end
    add_column :areas, :state, :string
    add_column :areas, :city,  :string
    add_column :areas, :district, :string
    add_index  :areas, :state
    add_index  :areas, :city
    add_index  :areas, :district
  end
end
