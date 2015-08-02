class Participanttype < ActiveRecord::Base
  attr_accessible :code, :name

  has_many :gesparticipants, :foreign_key => "participanttype_code", :primary_key =>"code"
  has_many :registrations, :foreign_key => "participanttype_code", :primary_key =>"code"
end
