class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|

      t.timestamps
    end
    add_column :states, :name, :string
    add_index  :states, :name
  end
end
