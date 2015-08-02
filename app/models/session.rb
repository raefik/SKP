class Session < ActiveRecord::Base
  attr_accessible :code, :endtime, :starttime

  has_many :tracks, :foreign_key => "session_code", :primary_key =>"code"
end
