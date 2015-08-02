class SlotController < ApplicationController
	def manage
		if !validate_admin
			redirect_to index_path, :alert => "Unauthorize user!"
		end

		r = Room.find_by_code(params[:room])

		if r.nil?
			redirect_to index_path, :alert => "Invalid Room!"
		end
		@room = r
		@event = Eventdate.all
	end

	def add_event
		if !validate_admin
			status = "error"
			msg = "invalid user"
			date = "none"
		else
			if params[:date].nil?
				status = "error"
				msg = "valid user"
				date = "empty"
			else
				#e = Eventdate.new
				#e.date = params[:date]
				#e.save
				

				status = "ok"
				msg = "valid user"
				date = params[:date]
			end
		end

		data = {
			:status => status,
			:msg => msg,
			:date => date
		}

		render :json => data
	end

	def all_events
		if !validate_admin
			data = "error"
		else
			events = Array.new
			tracks = Array.new
			
			if params[:events] == "all" || params[:events] == "date"
				#e = Eventdate.order("date asc").all	
				#e.each do|ev|
				#	events.push({
				#		:allDay => true,
				#		:title => ev.date.strftime("%d %B %Y"),
				#		:start => ev.date
				#	})
				#end
				rooms = Room.find_by_code(params[:room])
				rooms.tracks.each do|r|

					dateExisted = false
					events.each do|e|
						if r.eventdate.date == e[:start]
							dateExisted = true
							break
						end
					end
					if !dateExisted
						events.push({
							:allDay => true,
							:title => r.eventdate.date.strftime("%d %B %Y"),
							:start => r.eventdate.date,
							:color => "rgb(255, 237, 110)",
							:borderColor => "rgb(138, 127, 0)",
							:textColor =>  "rgb(81, 83, 87)"
						})
					end
				end
			end

			if params[:events] == "all" || params[:events] == "track"
				#track = Track.all
				#track.each do|t|
				#	st = DateTime.parse(t.eventdate.date.strftime("%Y-%m-%d")+" "+t.slot.start.strftime("%H:%M"))
				#	en = DateTime.parse(t.eventdate.date.strftime("%Y-%m-%d")+" "+t.slot.end.strftime("%H:%M"))

				#	tracks.push({
				#		:allDay => false,
				#		:title => t.theme,
				#		:start => st,
				#		:end => en
				#	})
				#end

				track = Track.find_all_by_room_code(params[:room])
				track.each do|t|
					st = DateTime.parse(t.eventdate.date.strftime("%Y-%m-%d")+" "+t.slot.start.strftime("%H:%M"))
					en = DateTime.parse(t.eventdate.date.strftime("%Y-%m-%d")+" "+t.slot.end.strftime("%H:%M"))

					if t.tracktype_code == "PRL"
						color = "rgb(129, 214, 255)"
					elsif t.tracktype_code == "PLN"
						color = "rgb(177, 235, 89)"
					elsif t.tracktype_code == "DNR"
						color = "rgb(255, 211, 116)"
					end

					tracks.push({
						:allDay => false,
						:title => t.theme,
						:start => st,
						:end => en,
						:textColor =>  "rgb(81, 83, 87)",
						:color => color,
					})
				end
			end

		end
		render :json => tracks+events
	end

	def new_session_data
		if !validate_admin
			data = "error"
		else
			r = Registration.select("id, fullname").where('participanttype_code = "SPK"').order("fullname asc")
			reg = Array.new
			r.each do |re|
				reg.push({
					:code =>re.id,
					:name => re.fullname
				})
			end	

			#d = Eventdate.select('id, date').order("date asc").all
			#dat = Array.new
		
			#d.each do |da|
			#	dat.push({
			#		:code => da.id,
			#		:name => da.date.strftime("%d %B %Y")
			#	})
			#end
			date = Date.parse(params[:date])
			dat = Array.new
			#dat = '<input type="text" disabled="disabled" value="'+date.strftime("%d %B %Y")+'" id="dateSelected" code="'+params[:date]+'" style="width:100%;color: rgb(167, 167, 167);" >'
			dat.push({
				:code => params[:date],
				:name => date.strftime("%d %B %Y")
			})

			roo = Room.find_by_code(params[:room])
			#room = '<input type="text" disabled="disabled" value="'+roo.name+' Room" id="roomS" code="'+roo.code+'" style="width:100%;color: rgb(167, 167, 167);" >'
			room = Array.new
			room.push({
				:code => roo.code,
				:name => roo.name
			})

			s = Slot.select("code, start, end").all
			slo = Array.new
			s.each do |sl|
				slo.push({
					:code => sl.code,
					:name => sl.start.strftime("%I:%M %p")+" - "+sl.end.strftime("%I:%M %p")
				})
			end

			existSlot = Array.new
			roo.tracks.each do|track|
				if track.eventdate.date == Date.parse(params[:date])
					existSlot.push({
						:code => track.slot.code,
						:name => track.slot.start.strftime("%I:%M %p")+" - "+track.slot.end.strftime("%I:%M %p")
					})
				end
			end

			t = Tracktype.select("code, name").order("name asc").all
			type = Array.new
			t.each do |tp|
				type.push({
					:code => tp.code,
					:name => tp.name
				})
			end

			data = {
				:date => dat,
				:slot => slo,
				:room => room,
				:speaker => reg,
				:type =>type,
				:slotE => existSlot
			}
		end
		
		render :json => data
	end

	def add_session

		if !validate_admin
			status = "error"
		else
			t = Track.new	
			t.theme = params[:theme]
			t.trackstatus_code = "ACT"
			t.slot_code = params[:slot]
			t.room_code = params[:room]
			t.tracktype_code = params[:type]

			ed = Eventdate.find_by_date(params[:date])

			if ed.nil?
				eventdate = Eventdate.new
				eventdate.date = params[:date]
				eventdate.save
				
				edid = eventdate.id
			else
				edid = ed.id
			end
			t.eventdate_id = edid

			t.save


			ts = Trackspeaker.new
			ts.trackrole_code = "MDR"
			ts.track_id = t.id
			ts.presenter_id = Registration.find(params[:moderator]).presenter.id
			ts.save

			speaker = params[:speaker]
			speaker.each do|sp|
				s = Trackspeaker.new
				s.trackrole_code = "SPK"
				s.track_id = t.id
				s.presenter_id = Registration.find(sp).presenter.id
				s.save
			end

			status = "success"
		end
		data = {
			:status => status
		}

		render :json => data
	end
end
