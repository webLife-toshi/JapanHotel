class Administrator < ActiveRecord::Base
  attr_accessible :admin_email, :admin_name, :admin_password_hash, :admin_password_salt, :admin_remember_token
end
