class Slot < ActiveRecord::Base
  attr_accessible :end, :start, :name, :code

  has_many :tracks,  :foreign_key => "slot_code", :primary_key =>"code"
end
