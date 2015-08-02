class Nationality < ActiveRecord::Base
  	attr_accessible :code, :name

  	has_many :registrations, :foreign_key => "nationality_code", :primary_key =>"code"
end
