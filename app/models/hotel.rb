class Hotel < ActiveRecord::Base
  	attr_accessible :code, :description, :name, :phone

  	has_many :registrations, :foreign_key => "hotel_code", :primary_key =>"code"

end
