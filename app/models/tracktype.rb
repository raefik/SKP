class Tracktype < ActiveRecord::Base
  attr_accessible :code, :name

  has_many :tracks, :foreign_key => "tracktype_code", :primary_key =>"code"
end
