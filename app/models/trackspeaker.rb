class Trackspeaker < ActiveRecord::Base
  	attr_accessible :presenter_id, :track_id, :trackrole_code

  	belongs_to :presenter, :foreign_key => "presenter_id", :primary_key =>"id"
  	belongs_to :track, :foreign_key => "track_id", :primary_key =>"id"
  	belongs_to :trackrole, :foreign_key => "trackrole_code", :primary_key =>"code"
end
