class WebserviceController < ApplicationController
	before_filter :allow_ajax_request_from_other_domains
    def allow_ajax_request_from_other_domains
	    headers['Access-Control-Allow-Origin'] = '*'
	    headers['Access-Control-Request-Method'] = '*'
	end 

	def user
		users = User.all

		render :json => users
	end

	def login 

	    username = params[:username]
	    password = params[:password]

	    user = User.authenticate(params[:username], params[:password])
	    if user
	        render :json => user
	    else

	    	#registration = Registration.find_by_tag_code(username)
	    	#registration = Gesparticipant.find_by_username(username)joins("LEFT JOIN registrations ON registrations.id = gesparticipants.id")
		registration = Gesparticipant.find_by_username(username)

#	    	if registration &&  registration.noic == password
	    	if registration &&  registration.password == Digest::MD5.hexdigest(password)
	    		render :json => registration.registration
	    	else
	    		render :json => { "result" => "failed" }
	    	end
    
	    end
	end

	def logout
		username = params[:username]

		user = User.find_by_username(username)
		user.push_notification = ""
		user.save

		render :json => { 'result' => 'success'}

	end

	def setpushnotification
		pushID = params[:pushID]

		user = User.find_by_username(params[:username])

		user.update_attribute(:push_notification, pushID)

		user.save

		render :json => { 'result' => 'success'}
	end

	def getpushnotification
		
		send_to = params[:send_to]
		participant_id = params[:id]


		participant = Gesparticipant.find_by_reg_id(participant_id)
		if participant.hotelstatus_code != "ACK"
			participant.hotelstatus_code = "PE"
		end
		if participant.transportstatus_code != "ACK"
			participant.transportstatus_code = "PE"
		end

		if participant.committeestatus_code != "ACK"
			participant.committeestatus_code = "PE"	
		end
		participant.save

		if send_to == "all"
			user = User.all
			pushId = Array.new 
			user.each do | u |
				if u.username != params[:self]
					pushId.push(u.push_notification)
				end
			end
		elsif send_to == "hotel"
			user = User.where("role_code = ?", "HTL")
			pushId = Array.new 
			user.each do | u |
				if u.username != params[:self]
					pushId.push(u.push_notification)
				end
			end
		elsif send_to == "transport"
			user = User.where("role_code = ?", "LGS")
			pushId = Array.new 
			user.each do | u |
				if u.username != params[:self]
					pushId.push(u.push_notification)
				end
			end
		elsif send_to == "ushered"
			user = User.where("role_code = ?", "USH")

			pushId = Array.new 
			user.each do | u |
				if u.username != params[:self]
					pushId.push(u.push_notification)
				end
			end
		end

		participant = Gesparticipant.where("gesparticipants.reg_id = ?", participant_id).joins("LEFT OUTER JOIN tblRegistration ON tblRegistration.reg_id = gesparticipants.reg_id").select("gesparticipants.*, tblRegistration.Participant_Name")

		render :json => {:pushId => pushId, :participant => participant}
	end

	def getallmember 
		#member = Registration.all
		
		#participants = Gesparticipant.joins("LEFT JOIN tblRegistration ON tblRegistration.reg_id = gesparticipants.reg_id").select("tblRegistration.Participant_Name, gesparticipants.*")
		participants = Registration.all
		
		render :json => { :participants => participants }
	end

	def getmember
		id = params[:id]

		member = Registration.joins("LEFT JOIN tblMembers ON tblRegistration.Register_ByWho = tblMembers.Member_ID").where("tblRegistration.reg_id = ?", id).select("tblRegistration.*, tblMembers.Institution_address")
		participant = Gesparticipant.where("reg_id = ?", id)

		render :json => {:member => member, :participant => participant }
	end
	def preregistration

		id = params[:id]

		participant = Gesparticipant.new
		participant.reg_id = id
		participant.participanttype_code = "DLG"
		participant.hotelstatus_code = "NO"
		participant.transportstatus_code = "NO"
		participant.committeestatus_code = "NO"
		participant.registrationstatus_code = "PR"
		participant.save
		
		participants = Gesparticipant.all

		render :json => participants
	end

	def getpending
		role = params[:role]

		if role == 'HTL'
			pending = Gesparticipant.where('hotelstatus_code = ?', 'PE').joins("LEFT JOIN tblRegistration ON tblRegistration.reg_id = gesparticipants.reg_id").select("tblRegistration.Participant_Name, gesparticipants.*")
		end
		if role == 'USH'
			pending = Gesparticipant.where('committeestatus_code = ?', 'PE').joins("LEFT JOIN tblRegistration ON tblRegistration.reg_id = gesparticipants.reg_id").select("tblRegistration.Participant_Name, gesparticipants.*")
		end
		if role == 'LGS'
			pending = Gesparticipant.where('transportstatus_code = ?', 'PE').joins("LEFT JOIN tblRegistration ON tblRegistration.reg_id = gesparticipants.reg_id").select("tblRegistration.Participant_Name, gesparticipants.*")
		end

		render :json => {:participant => pending }

	end

	def sendack
		role = params[:role]
		id = params[:id]
		
		participant = Gesparticipant.find_by_reg_id(id)
		if role == 'HTL'
			participant.hotelstatus_code = "ACK"
		end
		if role == 'USH'
			participant.committeestatus_code = "ACK"
		end
		if role == 'LGS'
			participant.transportstatus_code = "ACK"
			
		end

		participant.save

		render :json => { 'result'=>'success' }
	end

end
