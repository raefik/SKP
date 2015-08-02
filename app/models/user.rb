class User < ActiveRecord::Base
  	attr_accessible :password, :password_salt, :role_code, :username, :usefor
  	
  	belongs_to :role, :foreign_key => "role_code", :primary_key =>"code"
  	
	def self.authenticate(username, password)
	    user = User.find_by_username(username)
	    if user && user.password == BCrypt::Engine.hash_secret(password, user.password_salt)
	      user
	    else
	      nil
	    end
	end

end
