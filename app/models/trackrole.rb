class Trackrole < ActiveRecord::Base
  	attr_accessible :code, :name

  	has_many :trackspeakers, :foreign_key => "trackrole_code", :primary_key =>"code"
end
