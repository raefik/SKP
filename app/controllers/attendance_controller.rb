class AttendanceController < ApplicationController
	layout "attendance"

	def page
		if request.post?
			@room = Room.find_by_code(params[:room])
			@time = DateTime.now
			if @room.nil?
				redirect_to selectroom_url, :alert => "Invalid Room!"
			else
				adv = -15

				event = Eventdate.find_by_date(@time.strftime("%Y-%m-%d"))
				if !event.nil?
					#@todayevent = event.tracks.find_all_by_room_code(params[:room]).order("slot_code asc")
					@todayevent = event.tracks.find(:all, :order => "slot_code asc", :conditions => {:room_code => params[:room]} )

					@start = Array.new
					@now = "none"
					n = DateTime.parse(@time.strftime("%Y-%m-%d ")+@time.strftime("%H:%M"))
					@todayevent.each do|te|
						#t = Array.new
						#t.push(te.slot.start.strftime("%H:%M"))
						#t.push(te.slot.end.strftime("%H:%M"))
						#@start.push(t)
						s = DateTime.parse(@time.strftime("%Y-%m-%d ")+te.slot.start.strftime("%H:%M"))
						s = s.advance(:minutes => adv)
						e = DateTime.parse(@time.strftime("%Y-%m-%d ")+te.slot.end.strftime("%H:%M"))
						if n >= s && n <= e
							@now = te.slot.start.advance(:minutes => adv).strftime("%H:%M").to_s
						end
						if s > n
							@start.push(s.strftime("%H:%M"))
						end
						if e > n
							@start.push(e.strftime("%H:%M"))
						end
						
					end
					
				end
				
			end

		else
			redirect_to selectroom_url, :alert => "Please Select Room!"
		end
	end

	def room
		@room = Room.order("name ASC").all
	end

	def event_now
		

		if params[:now] != "none"
			eventtoday = Eventdate.find_by_date(DateTime.now.strftime("%Y-%m-%d"))
			if !eventtoday.nil?
				start = DateTime.parse(DateTime.now.strftime("%Y-%m-%d ")+params[:now])
				sa = start.advance(:minutes => params[:adv].to_i).strftime("%M")
				if sa == "00" || sa == "15" || sa == "30" || sa == "45"
					startN = start.advance(:minutes => params[:adv].to_i).strftime("%H:%M")
				else
					startN = start.strftime("%H:%M")
				end				

				slot = Slot.find_by_start(startN)
				if !slot.nil?
					event = eventtoday.tracks.find_by_room_code_and_slot_code(params[:room] ,slot.code)
					
					spk  = Array.new					
					event.trackspeakers.each do|sp|
						title = ""
						if !sp.presenter.registration.title.blank? 
							title = '<b>'+sp.presenter.registration.title+'</b>,<br/>'
						end

						org = ""
						if !sp.presenter.registration.organization.blank? 
							org = sp.presenter.registration.organization+',<br/>'
						end

						s = {
							:fullname => sp.presenter.registration.fullname,
							:role => sp.trackrole.name,
							:pic => sp.presenter.registration.image,
							:desc => title+org+sp.presenter.registration.nationality.name.titleize
						}
						spk.push(s)
					end

					r = Room.find_by_code(params[:room])

					now = {
						:eid => event.id,
						:theme => event.theme,
						:speaker => spk,
						:room =>event.capacity
					}

					status = "success"
					msg = "Current event changed!"
				else
					status = "none"
					now = "none"
					msg = "No current event!"
				end
				
			else
				status = "error"
				now = "none"
				msg = "No event for today!"
			end
		else
			status = "none"
			now = "none"
			msg = "No current event!"
		end

		data = {
			:status => status,
			:now => now,
			:msg => msg,
			:datenow => start
		}

		render :json => data
		
	end


	def check_in
		if request.post?
			g = Gesparticipant.find_by_rfid(params[:rfid])

			if g
				track = Trackattendance.find_by_track_id_and_rfid(params[:eid],params[:rfid])
				
				if track.nil?
					status = "successIn"
					msg = g.registration.fullname
					greet = "Welcome,"

					ta = Trackattendance.new
					ta.track_id = params[:eid]
					ta.first_in = DateTime.now
					ta.rfid = params[:rfid]
					ta.save

				elsif !track.first_in.nil? && (track.out.nil? || track.out == "") 
					status = "successOut"
					msg = g.registration.fullname
					greet = "Have a nice day,"

					track.out = DateTime.now
					track.last_out = DateTime.now
					track.save
				elsif !track.first_in.nil? && ( !track.out.nil? && track.out != "") 
					status = "successIn"
					msg = g.registration.fullname
					greet = "Welcome,"
					
					track.out = ""
					track.save
				end 
			else
				status="error"
				msg="RFID is not activated yet!"
				greet = "none"
			end
		else
			status = "error"
			msg = "Invalid request!"
			greet = "none"
		end
		data = {
			:status => status,
			:msg => msg,
			:greet => greet
		}

		render :json => data
	end
end
