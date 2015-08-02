class Presenter < ActiveRecord::Base
  	attr_accessible :details, :dob, :email, :gesparticipant_id, :identification, :password, :password_salt, :username

  	has_many :presenterfiles, :foreign_key => "presenter_id", :primary_key =>"id"
  	has_many :trackspeakers, :foreign_key => "presenter_id", :primary_key =>"id"

  	belongs_to :gesparticipant, :foreign_key => "gesparticipant_id", :primary_key =>"id"
 	belongs_to :registration, :foreign_key => "registration_id", :primary_key =>"id"

end
