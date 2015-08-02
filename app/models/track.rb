class Track < ActiveRecord::Base
	attr_accessible :description, :room_code, :session_code, :theme, :trackstatus_code

	belongs_to :trackstatus, :foreign_key => "trackstatus_code", :primary_key =>"code"
	belongs_to :tracktype, :foreign_key => "tracktype_code", :primary_key =>"code"
	belongs_to :room, :foreign_key => "room_code", :primary_key =>"code"
	#belongs_to :session, :foreign_key => "session_code", :primary_key =>"code"
	belongs_to :slot, :foreign_key => "slot_code", :primary_key =>"code"
	belongs_to :eventdate

	has_many :trackattendances
	has_many :trackspeakers, :foreign_key => "track_id", :primary_key =>"id"
end
