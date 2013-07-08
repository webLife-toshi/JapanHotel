class CreateAdministrators < ActiveRecord::Migration
  def change
    create_table :administrators do |t|
      t.string :admin_name
      t.string :admin_email
      t.string :admin_password_hash
      t.string :admin_password_salt
      t.string :admin_remember_token

      t.timestamps
    end
  end
end
