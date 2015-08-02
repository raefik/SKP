class Trackstatus < ActiveRecord::Base
  attr_accessible :code, :name

  has_many :tracks, :foreign_key => "trackstatus_code", :primary_key =>"code"
end
