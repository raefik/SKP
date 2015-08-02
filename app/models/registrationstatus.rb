class Registrationstatus < ActiveRecord::Base
  attr_accessible :code, :name

   has_many :gesparticipants, :foreign_key => "registrationstatus_code", :primary_key =>"code"
end
