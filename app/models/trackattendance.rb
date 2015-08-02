class Trackattendance < ActiveRecord::Base
  attr_accessible :first_in, :last_out, :rfid, :track_id

  belongs_to :gesparticipant, :foreign_key => "rfid", :primary_key =>"rfid"
  belongs_to :track
end
