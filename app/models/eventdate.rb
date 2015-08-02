class Eventdate < ActiveRecord::Base
  	attr_accessible :date

	has_many :tracks

end
