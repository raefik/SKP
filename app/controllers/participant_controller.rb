class ParticipantController < ApplicationController

	def manage
		@type = Participanttype.find(:all, :order => "name ASC")
		@nationality = Nationality.find(:all, :order => "name ASC")
		@hotel = Hotel.find(:all, :order => "name ASC")
	end

	def get_list_participant

		# array of database columns use by DataTables. use an empty string when you want to insert a non-database field
	    # aColumns = ['Participant_IC','Participant_Name','Participant_email','Register_Type','Register_status','']

	    aColumns = ['tag_code','fullname','title','organization','nationality_code','participanttype_code','']
	    aColumnType = ['string','string','string','string','string','string','']

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
	    sWhere = "1=1"

	    if params[:sSearch_3] != "all" && params[:sSearch_3] != ""
	    	sWhere += " AND registrations.participanttype_code = '"+params[:sSearch_3]+"'"
	    	if !params[:sSearch].empty?
	 	   		sWhere += " AND ("
	 	   		sWhere += "LOWER(tag_code) LIKE LOWER('%" + params[:sSearch] + "%') OR "
	 	   		sWhere += "LOWER(fullname) LIKE LOWER('%" + params[:sSearch] + "%') OR "
	 	   		sWhere += "LOWER(nationalities.name) LIKE LOWER('%" + params[:sSearch] + "%')"
	 	   		sWhere += ")"
	 	   	end

	    elsif !params[:sSearch].empty? 
	    	sWhere += " AND "
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
	    end
	    

	    #sWhere += " AND "
	    #
	    # individual column filtering
	    #inc = 0
	    #until inc > aColumns.count-1
	    #   	if params[:"bSearchable_#{inc}"].present? && params[:"bSearchable_#{inc}"] == "true" && !params[:"sSearch_#{inc}"].empty?
		#        if aColumnType[inc] == "int"
		#        	sWhere += aColumns[inc] + " = " + params[:"sSearch_#{inc}"].to_i.to_s + " AND "
		#        else
		#           	if aColumnType[inc] == "float"
		#            	sWhere += aColumns[inc] + " = " + params[:"sSearch_#{inc}"].to_f.to_s + " AND "
		#           	else
		#            	if aColumnType[inc] == "datetime"
		#            		@date = params[:"sSearch_#{inc}"]
		#               		#if !@date.nil?
		#               		sWhere += '(('+aColumns[inc] + "::date)::text) LIKE LOWER('%" +  params[:sSearch] +"%') AND "
		#               		#end
		#             	else
		#               		sWhere += aColumns[inc] + " LIKE LOWER('%" + params[:sSearch] + "%') AND "
		#           		end
		#        	end
	    # 		end
	    #	end
	    #	inc+=1
	    #end
	    #sWhere += "1=1"


	    aColumnsSelect = ['registrations.tag_code','registrations.noic','registrations.fullname','registrations.participanttype_code','registrations.id','registrations.title','registrations.organization','nationalities.name as country']
	    #aColumnsSelect.reject! { |c| c.empty? }
	    selectedColumn = aColumnsSelect.join(', ')

	    if params[:type] == "reactivate"
	    	#sWhere += " AND (gesparticipants.rfid IS NOT NULL OR gesparticipants.rfid <> '') "
	    	sWhere += " AND (gesparticipants.registrationstatus_code = 'ACT') "
	    	selectedColumn += ', gesparticipants.registrationstatus_code , gesparticipants.rfid'
			totalrecord = Gesparticipant.select(selectedColumn)
		    .joins('INNER JOIN registrations ON registrations.id = gesparticipants.reg_id')
		    .joins('INNER JOIN nationalities ON registrations.nationality_code = nationalities.code')
		    .where(sWhere)
	    else
		    totalrecord = Registration.select(selectedColumn)
		    .joins('INNER JOIN nationalities ON registrations.nationality_code = nationalities.code')
		    .where(sWhere)
		end

	    rowno = params[:iDisplayStart].to_i

	    #participant = totalrecord.limit(params[:iDisplayLength]).offset(params[:iDisplayStart]).order(sOrder)

	    if params[:iDisplayLength] != "-1"
	    	participant = totalrecord.limit(params[:iDisplayLength]).order(sOrder).offset(params[:iDisplayStart])
	    else
	    	participant = totalrecord.order(sOrder).offset(params[:iDisplayStart])
	    end

	    participants = participant.each.map do |p|
		    

		    #if !p.presenter.nil?
		    #	p.presenter.dob.nil? ? dob = "" : dob = p.presenter.dob 
		    #	p.presenter.details.nil? ? details = "" : details = p.presenter.details 

		    	if params[:type] != "reactivate"
			    	#type  = '<button from="table" type="button" uid="'+p.id.to_s+'" class="btn-mini btn-white view" title="View Delegate">'
			     	#type += '<i class="fa fa-eye"></i>'
			    	#type += '</button> &nbsp;'

			    	type = '<button from="table" type="button" uid="'+p.id.to_s+'" class="btn-mini btn-white edit" title="Edit Delegate">'
			     	type += '<i class="fa fa-edit"></i>'
			    	type += '</button>'
			    else
			    	type  = '<button from="table" type="button" uid="'+p.id.to_s+'" class="btn-mini btn-white reactivate" title="Reactivate RFID">'
			     	type += '<i class="fa fa-credit-card"></i>'
			    	type += '</button>' 
		    	end
		    #else
		    #	type = p.participanttype.name
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
		        p.participanttype.name,
		        type
	    	] 
		end

	    totallen = totalrecord.length


		render :json => {
			:sEcho => params[:sEcho],
			:iTotalRecords => totallen,
			:iTotalDisplayRecords => totallen,
			:aaData => participants,
     	}

     	
		
	end

	def new_delegate
		if request.post? && validate_admin
			
			delegate = Registration.find_by_noic(params[:noic])

			if delegate.nil?
				r = Registration.new

				r.fullname = params[:name].titleize
				r.noic = params[:noic]
				r.phone = params[:phone]
				r.email = params[:email]
				r.nationality_code = params[:nationality]
				r.participanttype_code = params[:type]
				r.title = params[:title]
				r.organization = params[:organization]
				r.hotel_code = params[:hotel]

				#seq = Registration.find(:all, :conditions => {:nationality_code => "MYS", :participanttype_code => params[:type] }, :order => "tag_code ASC").length
				if params[:nationality] != "MYS"
					conditions = 'nationality_code not in(?) and participanttype_code = ? '
					codeTag = "GI"
				else
					conditions = 'nationality_code = ? and participanttype_code = ? '
					codeTag = "GL"
				end

				if params[:type] == "DLG"
					codeTag = codeTag+"P"
				elsif params[:type] == "SPK"
					codeTag = codeTag+"S"
				else
					codeTag = codeTag+"G"
				end

				seq = Registration.find(:all, 
					:conditions => [conditions,"MYS",params[:type] ], 
					:order => "tag_code ASC").length+1

				padding = 4
				codeTag = "%s%0#{padding}d" %["#{codeTag}",seq]

				#r.tag_code = codeTag
				r.save

				if params[:type] == "SPK"
					p = Presenter.new
					
					p.registration_id = r.id
					p.identification = params[:noic]
					p.email = params[:email]
					p.details = params[:details]
					p.dob = params[:dob]
					p.save

					if params[:picA] != "" && params[:picA] != nil
						ext = params[:pic].split(".")[1]
						picname = p.id.to_s+"."+ext.downcase
					    current_pic = Rails.root.to_s+"/app/assets/images/speaker/temp/"+params[:pic]    
					    saving = Rails.root.to_s+"/app/assets/images/speaker/profile/"+picname
					    
					    require "mini_magick"
					    temp = MiniMagick::Image.open(current_pic) 

					    temp.resize ("400x")
					    crop_params = params[:crop_w]+"x"+params[:crop_h]+"+"+params[:crop_x]+"+"+params[:crop_y]


					    temp.crop(crop_params)
					    temp.write(saving)

					    r.image = picname
					    r.save
					else
						r.image = "default.jpg"
						r.save
					end

					
				end
				status = "success"
				msg = "Successfully updated!"
			else
				status = "error"
				msg = "NOIC/Passport already exist!"

			end
		else
			status = "error"
			msg = "Invalid request!"
		end

		render :json => {
			:status => status,
			:msg => msg,
     	}
	end

	def autoupload
		pic = params[:file]

		ext = File.extname(pic.original_filename)
	    name = "beforecrop".to_s+ext.downcase
	    directory = Rails.root.to_s+"/app/assets/images/speaker/temp/"
	    path = File.join(directory,name)

	    File.open(path,"wb"){ |f| f.write(pic.read)}

	    render :text => name
	end

	def test
	    render :text=> DateTime.now.to_s
	end

	def edit_delegate
		details = "none"
		status = "error"
		msg = "invalid"

		if request.post? && validate_admin
			delegate = Registration.find_by_id(params[:id])

			if !delegate.blank?
				details = Array.new
				if params[:todo] == "edited"
					status = "success"
					msg = "Successfully edited!"
				elsif params[:todo] == "view"
					ty = Participanttype.find(:all,:order => "name ASC")

					type = Array.new
					ty.each do |t|
						type.push({
							:code => t.code,
							:name => t.name
						})
					end

					na = Nationality.find(:all,:order => "name ASC")

					nation = Array.new
					na.each do |n|
						nation.push({
							:code => n.code,
							:name => n.name
						})
					end

					details.push(delegate)
					details.push(nation)
					details.push(type)

					status = "success"
					msg = "done!"
				end
			end
		end

		render :json => {
			:detail => details,
			:status => status,
			:msg => msg,
     	}
	end
end
