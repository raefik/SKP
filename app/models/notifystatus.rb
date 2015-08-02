class Notifystatus < ActiveRecord::Base
  attr_accessible :code, :name

  has_many :gesparticipants, :foreign_key => "hotelstatus_code", :primary_key =>"code"
  has_many :gesparticipants, :foreign_key => "committeestatus_code", :primary_key =>"code"
  has_many :gesparticipants, :foreign_key => "transportstatus_code", :primary_key =>"code"
end
