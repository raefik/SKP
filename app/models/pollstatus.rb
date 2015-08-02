class Pollstatus < ActiveRecord::Base
  attr_accessible :code, :name

  has_many :polls, :foreign_key => "pollstatus_code", :primary_key =>"code"
end
