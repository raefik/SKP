class ActivationController < ApplicationController

	def rollback
		if validate_admin

			p = Gesparticipant.all

			p.each do |g|
				g.delete
				g.save
			end

			redirect_to activation_path, :notice => "Successfully Rollback!"
			
		else
			redirect_to activation_path, :alert => "Invalid Page!"
	
		end

	end

	def view
		if params[:list].nil? || params[:list] == "participant" || params[:list] == "speaker" || params[:list] == "staff"
			
			
			@registrations = Registration.order('fullname ASC').all

			#if params[:list] == "DLG"
			#	@registrations = Registration.order('Participant_Name ASC').all
			#elsif params[:list] == "SPK"
			#	@registrations = Registration.order('Participant_Name ASC').all
			#elsif params[:list] == "MDA"
			#	@registrations = Registration.order('Participant_Name ASC').all
			#else
			#	@registrations = Registration.order('Participant_Name ASC').all
			#end
		else
			redirect_to activation_path, :alert => "Invalid page!"
		end
	end


	def get_participants
		params[:list].nil? ? look = session[:home] : look = params[:list]

		#lookup = Lookup.first(:conditions =>{:Lookup_Type => "RegisterAs", :Lookup_Name => look.capitalize})
		lookup = Participanttype.find_by_name(look.capitalize)
		

		# array of database columns use by DataTables. use an empty string when you want to insert a non-database field
	    # aColumns = ['Participant_IC','Participant_Name','Participant_email','Register_Type','Register_status','']
	    aColumns = ['tag_code','title','fullname','organization','nationality_code','','']
	    aColumnType = ['string','string','string','string','string','','']

	    aColumnsS = ['LOWER(registrations.tag_code)','LOWER(registrations.fullname)','LOWER(registrations.organization)','LOWER(nationalities.name)','','']
	    aColumnSType = ['string','string','string','string','','']

	    # ordering
		sOrder = ""
		if params[:iSortCol_0].present?
			#sOrder = "ORDER BY "
			inc = 0
			until inc > params[:iSortingCols].to_i-1
				sortInc = params[:"iSortCol_#{inc}"].to_i
				if params[:"bSortable_#{sortInc}"] == "true" && !aColumns[sortInc].empty?
					sOrder += aColumns[sortInc] + ( params[:"sSortDir_#{inc}"] == 'asc' ? " asc" : " desc") + ", "
				end
				inc+=1
			end

			sOrder = sOrder[0..-3]
			if sOrder == ""
				#sOrder = ""
				sOrder = "fullname ASC"
			end
		#else
		#	sOrder = "ORDER BY Participant_Name ASC"
		end

		# filtering
	    sWhere = "participanttype_code = '"+lookup.code.to_s+"' "
	    if !params[:sSearch].empty?
	    	sWhere += " AND ("
	        inc = 0
	        until inc > aColumnsS.count-1
		        if !aColumnsS[inc].empty?
		            if aColumnSType[inc] == "int"
		            	sWhere += aColumnsS[inc] + " = " + params[:"sSearch_#{inc}"].to_i.to_s + " AND "
		           	else
		            	if aColumnSType[inc] == "float"
		            		sWhere += aColumnsS[inc] + " = " + params[:"sSearch_#{inc}"].to_f.to_s + " OR "
		             	else
		               		if aColumnSType[inc] == "datetime"
		                 		@date = params[:"sSearch_#{inc}"]
		                 		#if !@date.nil?
		                 		sWhere += '(('+aColumnsS[inc] + "::date)::text) LIKE LOWER('%" +  params[:sSearch] +"%') OR "
		                 		#end
		               		else
		                 		sWhere += aColumnsS[inc] + " LIKE LOWER('%" + params[:sSearch] + "%') OR "
		               		end
		             	end
		           	end
         		end
         		inc+=1
       		end
    		sWhere = sWhere[0..-5]
	    	sWhere += ")"
	    end
	    
	    sWhere += " AND "


	    # individual column filtering
	    inc = 0
	    until inc > aColumns.count-1
	       	if params[:"bSearchable_#{inc}"].present? && params[:"bSearchable_#{inc}"] == "true" && !params[:"sSearch_#{inc}"].empty?
		        if aColumnType[inc] == "int"
		        	sWhere += aColumns[inc] + " = " + params[:"sSearch_#{inc}"].to_i.to_s + " AND "
		        else
		           	if aColumnType[inc] == "float"
		            	sWhere += aColumns[inc] + " = " + params[:"sSearch_#{inc}"].to_f.to_s + " AND "
		           	else
		            	if aColumnType[inc] == "datetime"
		            		@date = params[:"sSearch_#{inc}"]
		               		#if !@date.nil?
		               		sWhere += '(('+aColumns[inc] + "::date)::text) LIKE LOWER('%" +  params[:sSearch] +"%') AND "
		               		#end
		             	else
		               		sWhere += aColumns[inc] + " LIKE LOWER('%" + params[:sSearch] + "%') AND "
		           		end
		        	end
	    		end
	    	end
	    	inc+=1
	    end
	    sWhere += "1=1"

	    aColumnsSelect = ['registrations.tag_code','registrations.fullname','registrations.participanttype_code','registrations.id', 'registrations.title', 'nationalities.name as country', 'registrations.organization']
	    #aColumnsSelect.reject! { |c| c.empty? }
	    selectedColumn = aColumnsSelect.join(', ')

	    totalrecord = Registration.select(selectedColumn)
	    .joins('INNER JOIN nationalities ON registrations.nationality_code = nationalities.code')
	    .where(sWhere)

	    rowno = params[:iDisplayStart].to_i

	    #participant = totalrecord.limit(params[:iDisplayLength]).offset(params[:iDisplayStart]).order(sOrder)

	    if params[:iDisplayLength] != "-1"
	    	participant = totalrecord.limit(params[:iDisplayLength]).order(sOrder).offset(params[:iDisplayStart])
	    else
	    	participant = totalrecord.order(sOrder).offset(params[:iDisplayStart])
	    end


	    participants = participant.each.map do |p|
	    
			activate = '<button from="table" regid="'+p.id.to_s+'" id="'+p.id.to_s+'" type="button" class="btn btn-white activation"><i class="fa fa-credit-card"></i></button>'

			if p.gesparticipant.nil?
				register = "-"
			else
				if p.gesparticipant.registrationstatus.code == "ACT" 
					activate = ""
					register = "<font class='act'>"+p.gesparticipant.registrationstatus.name+"</font>"
				else
					register = p.gesparticipant.registrationstatus.name

				end
			end

			#if p.Register_status
			#	status = "<span style='color:rgb(25, 155, 14)'>Completed</span>"
			#else
			#	activate = ""  
			#	status = "<span style='color:rgb(255, 55, 55)'>Incomplete</span>"
			#end 

			if p.title.nil? || p.title == ""
				title = "-"
			else
				title = p.title
			end 

			if p.organization.nil? || p.organization == ""
				org = "-"
			else
				org = p.organization+", "+p.country.titleize
			end

	    	[
		        p.tag_code,
		        p.fullname.titlecase,
		        title,
		        org,
		        p.country.titleize,
		        lookup.name,
		        register,
		        activate,
	    	] 
		end

	    if sWhere == "participanttype_code = '"+lookup.code.to_s+"'  AND 1=1"
	       #totallen = Registration.where("Register_Type = ?", lookup.code.to_s).length
	       totallen = Registration.where("participanttype_code = ?", lookup.code.to_s).length
	    else
	       totallen = totalrecord.length
	    end

		render :json => {
			:sEcho => params[:sEcho],
			:iTotalRecords => totallen,
			:iTotalDisplayRecords => totallen,
			:aaData => participants
     	}
    end

    def push_queue
    	if !params[:regid].nil?
    		user = Registration.find(:first, :conditions =>{ :id => params[:regid]})
    		if user.nil?
    			data = "no data"
	    		message = "invalid regid"
	    		proceed = false
    		else	
    			#type = Lookup.first(:conditions =>{:Lookup_Type => "RegisterAs", :Lookup_Code => user.Register_Type}).Lookup_Name
    			
    			#if type=="Delegation"
    			#	typestatus = "DLG"
    			#elsif type=="Speaker"
    			#	typestatus = "SPK"
    			#elsif type=="Media"
    			#	typestatus = "MDA"
    			#end
    			
    			type = user.participanttype.name
    			typestatus = user.participanttype_code


    			if user.gesparticipant.nil?
    				g = Gesparticipant.new()
    				g.reg_id = user.id
    				g.participanttype_code = typestatus
    				g.registrationstatus_code = "QU"
    				g.save
    			else
    				user.gesparticipant.registrationstatus_code = "QU"
    				user.gesparticipant.save
    			end

    			data = {
    				:regid => user.id,
    				:ic => user.noic,
    				:fullname => user.fullname,
    				:type => typestatus,
    				#:user => user.gesparticipant 
    			}
	    		message = "success"
	    		#proceed = true
	    	end
    	else
    		data = "error"
    		message = "no parameter"
    		#proceed = false
    	end

    	render :json =>{
    		:data => data,
    		:message => message,
    		#:proceed => proceed
    	}
    end

    def update_queue
    	if request.post?
    		p = Gesparticipant.find(:all, :order =>'updated_at ASC', :conditions => {:registrationstatus_code => "QU",:participanttype_code => params[:type]})
    		if !p.empty?
    			data = Array.new()
    			p.each do|d|
    				detail = {
	    				:fullname => d.registration.fullname,
	    				:tag => d.registration.tag_code,
	    				:regid => d.registration.id,
	    				:country => d.registration.nationality.name
	    			}
	    			data.push(detail)
	    		end
    		else
    			data = "no data"
    		end

    		message = "success"
    		count = p.length
    	else
    		data = "error"
    		message = "nothing"
    		count = 0
    	end
    	
    	render :json =>{
    		:queue => data,
    		:message => message,
    		:count => count
    	}
    end

    def activate_rfid
    	if request.post?
    		u = Gesparticipant.find(:first, :conditions =>{ :reg_id => params[:regid]})
    		checkrfid = Gesparticipant.find_by_rfid(params[:rfid])

    		if !checkrfid.nil?
    			status = "error"
	    		msg = "RFID Card already in used!"
	    		activate = false
	    		node = "nothing"
    		elsif !u.nil? && params[:rfid] != ""
    			
    			u.rfid = params[:rfid]
    			u.registrationstatus_code = "ACT"
    			u.save

    			status = "success"
	    		msg = "valid"
	    		activate = true
	    		node = {
	    			:push => u.participanttype_code,
	    			:regid => u.reg_id
	    		}
	    	elsif params[:rfid] == ""
	    		status = "error"
	    		msg = "Invalid RFID!"
	    		activate = false
	    		node = "nothing"
    		else

    			user = Registration.find(:first, :conditions =>{ :id => params[:regid]})

    			if user.nil?
    				status = "error"
		    		msg = "Invalid participant!"
		    		activate = false
		    		node = "nothing"
    			else
	    			type = user.participanttype.name
	    			typestatus = user.participanttype_code

    				g = Gesparticipant.new()
    				g.rfid = params[:rfid]
    				g.reg_id = user.id
    				g.participanttype_code = typestatus
    				g.registrationstatus_code = "ACT"
    				g.save

	    			status = "success"
		    		msg = "valid"
		    		activate = true
		    		node = {
		    			:push => user.participanttype_code,
		    			:regid => user.id
		    		}
	    		end
	    			
    		end

    	else
    		status = "error"
    		msg = "Invalid request!"
    		activate = false
	    	node = "nothing"
    	end

    	render :json =>{
    		:message => msg,
    		:status => status,
    		:activate => activate,
    		:node => node
    	}
    end

    def reactivate_rfid
    	@type = Participanttype.find(:all, :order => "name ASC")
		@nationality = Nationality.find(:all, :order => "name ASC")
		@hotel = Hotel.find(:all, :order => "name ASC")
    end

     def reactivate
    	if request.post?
    		u = Gesparticipant.find(:first, :conditions =>{ :reg_id => params[:regid]})
    		checkrfid = Gesparticipant.find_by_rfid(params[:rfid])

    		if !checkrfid.nil?
    			status = "error"
	    		msg = "RFID Card already in used!"
	    		activate = false
    		elsif !u.nil? && params[:rfid] != ""
    			
    			u.rfid = params[:rfid]
    			u.registrationstatus_code = "ACT"
    			u.save

    			status = "success"
	    		msg = "valid"
	    		activate = true
	    	elsif params[:rfid] == ""
	    		status = "error"
	    		msg = "Invalid RFID!"
	    		activate = false
    		else

    			user = Registration.find(:first, :conditions =>{ :id => params[:regid]})

    			if user.nil?
    				status = "error"
		    		msg = "Invalid participant!"
		    		activate = false
    			else
	    			type = user.participanttype.name
	    			typestatus = user.participanttype_code

    				g = Gesparticipant.new()
    				g.rfid = params[:rfid]
    				g.reg_id = user.id
    				g.participanttype_code = typestatus
    				g.registrationstatus_code = "ACT"
    				g.save

	    			status = "success"
		    		msg = "valid"
		    		activate = true
	    		end
	    			
    		end

    	else
    		status = "error"
    		msg = "Invalid request!"
    		activate = false
    	end

    	render :json =>{
    		:message => msg,
    		:status => status,
    		:activate => activate,
    	}
    end


end
