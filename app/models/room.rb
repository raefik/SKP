class Room < ActiveRecord::Base
  attr_accessible :code, :name, :capacity, :current, :img

  has_many :tracks, :foreign_key => "room_code", :primary_key =>"code"
end
