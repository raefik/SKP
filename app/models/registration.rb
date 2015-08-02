class Registration < ActiveRecord::Base
  	attr_accessible :email, :fullname, :hotel_code, :image, :nationality_code, :noic, :phone

  	belongs_to :hotel, :foreign_key => "hotel_code", :primary_key =>"code"
  	belongs_to :nationality, :foreign_key => "nationality_code", :primary_key =>"code"
  	belongs_to :participanttype, :foreign_key => "participanttype_code", :primary_key =>"code"

 	has_one :gesparticipant, :foreign_key => "reg_id", :primary_key =>"id"
 	has_one :presenter, :foreign_key => "registration_id", :primary_key =>"id"
end
