class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|

      t.timestamps
    end
    add_column :cities, :name, :string
    add_index  :cities, :name
  end
end
