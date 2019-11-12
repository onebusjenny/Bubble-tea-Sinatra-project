class User < ActiveRecord::Base
    validates_presence_of :user_name, :user_email, :password
    has_secure_password
  end

  