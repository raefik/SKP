class StatisticController < ApplicationController
	def index
		@room = Room.all
		@date = Eventdate.order("date asc").all

		@slot = Slot.all
	end
end
