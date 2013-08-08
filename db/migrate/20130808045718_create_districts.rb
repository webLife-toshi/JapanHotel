class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|

      t.timestamps
    end
    add_column :districts, :name, :string
    add_index  :districts, :name
  end
end
