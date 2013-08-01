class AddNamePhotos < ActiveRecord::Migration
  def up
    add_column :photos, :name, :string
    add_index  :photos, :name
  end

  def down
  end
end
