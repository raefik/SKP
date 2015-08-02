class Gesparticipant < ActiveRecord::Base
  attr_accessible :committeestatus_code, :hotelstatus_code, :participanttype_code, :reg_id, :rfid, :transportstatus_code, :registrationstatus_code, :username

  belongs_to :participanttype, :foreign_key => "participanttype_code", :primary_key =>"code"
  belongs_to :notifystatus, :foreign_key => "hotelstatus_code", :primary_key =>"code"
  belongs_to :notifystatus, :foreign_key => "committeestatus_code", :primary_key =>"code"
  belongs_to :notifystatus, :foreign_key => "transportstatus_code", :primary_key =>"code"
  belongs_to :registrationstatus, :foreign_key => "registrationstatus_code", :primary_key =>"code"
  belongs_to :registration, :foreign_key => "reg_id", :primary_key =>"id"

  has_many :participantanswers, :foreign_key => "participant_id", :primary_key =>"id"
  has_many :trackattendances, :foreign_key => "rfid", :primary_key =>"rfid"
  
  has_one :presenter, :foreign_key => "gesparticipant_id", :primary_key =>"id"

end
