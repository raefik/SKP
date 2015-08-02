class UserController < ApplicationController
	layout "login"

	def register
		if request.post?

			user = User.new
			user.password_salt = BCrypt::Engine.generate_salt 
    		user.password = BCrypt::Engine.hash_secret(params[:password], user.password_salt)
    		user.username = params[:username]
    		user.role_code = Role.find_by_code("ADM").code
    		user.save

    		redirect_to index_path, :notice => "Successfully Registered! Please Login!"
		end
	end


	def login
		if request.post?
		    username = params[:username]
		    password = params[:password]

		    user = User.authenticate(params[:username], params[:password])
		    if user && user.usefor !="notification"
		        session[:user_id] = user.id
		        session[:username] = user.username
		        session[:role] = user.role.code
		        session[:user] = user.role.name

		        if user.role.code == "MDA"
		        	session[:home] = "media"
		        elsif user.role.code == "SPK"
		        	session[:home] = "speaker"
		        else
		        	session[:home] = "participant"
		        end
		        
		        redirect_to index_path, :notice => "Successfully Logged In!"
		    else
		        #@login = User.find_by_username(params[:username])
		        @login = User.find(:first, :conditions => ["username = ? AND usefor != ? ", params[:username], "notification"])
			    if @login != nil
			    	redirect_to index_path, :alert => "Wrong Password!"
		          	#flash.now.alert = "Wrong Password!"
		        else
		        	redirect_to index_path, :alert => "Invalid Username and Password Combination!"
		          	#flash.now.alert = "Invalid Username and Password Combination!"
		        end  

		        @username = params[:username]
		    end
		else
			redirect_to index_path    
		end    
	end


	def logout
	  	session[:user_id] = nil
	    session[:username] = nil
	    session[:role] = nil
	    session[:user] = nil
	    redirect_to index_path, :notice => "Successfully Logged Out!"
	end


	def page
		if validate_user && validate_attendance
		   	redirect_to selectroom_path
		elsif  validate_user && validate_dinner
		   	redirect_to selectroom_path
		elsif validate_user	&& (validate_admin || !validate_attendance) 

			#@lookup = Lookup.all(:conditions =>{:Lookup_Type => "RegisterAs"})
			#@registrations = Registration.order('Participant_Name ASC').all

		   	#render :layout =>'application'

		   	redirect_to activation_path
		else
			render "login"
		end
	end


	def queue
		if validate_user 
			redirect_to index_path
		else
			if request.post? && !params[:name].empty?
				@users = Registration.find(:all, :conditions=>['fullname LIKE LOWER(?) ', "%#{params[:name].downcase}%" ],:order => "fullname ASC", :limit => 10 )
			end
		end
	end

	def main
		if validate_user 
			redirect_to index_path
		else
			if request.post? && !params[:name].empty?
				@users = Registration.find(:all, :conditions=>['fullname LIKE LOWER(?) ', "%#{params[:name].downcase}%" ],:order => "fullname ASC", :limit => 10 )
			end
		end
	end


	def manage
		if validate_user && validate_admin
			@users = User.order("username ASC")
			roles = Role.order("code ASC")
			
			
			att = Array.new
			noty = Array.new
			sys = Array.new

			roles.each do|r|
				if r.code == "ADM" || r.code == "DLG" || r.code == "SPK" || r.code == "MDA"
					sys.push({'name' =>r.name, 'code' =>r.code})	
				
				elsif r.code == "HTL" || r.code == "LGS" || r.code == "USH" || r.code == "APT"
					noty.push({'name' =>r.name, 'code' =>r.code})
				
				else
					att.push({'name' =>r.name, 'code' =>r.code})			
				
				end
			end
			@roles = [{:group => "Attendance", :data=> att}, {:group => "Notification", :data=> noty}, {:group => "System", :data =>sys}]
		else
			redirect_to index_path, :alert => "Invalid Page!"
		end

		render layout: "application"
	end


	def get_all_user

	    aColumns = ['username','role_code','usefor','']
	    aColumnsS = ['LOWER(username)','LOWER(role_code)','LOWER(usefor)','']
	    aColumnType = ['string','string','string','']

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
				sOrder = "username ASC"
			end
		#else
		#	sOrder = "ORDER BY username ASC"
		end

		# filtering
	    sWhere = "1=1"
	    if !params[:sSearch].empty?
	    	sWhere += " AND "
	        inc = 0
	        until inc > aColumnsS.count-1
		        if !aColumnsS[inc].empty?
		            if aColumnType[inc] == "int"
		            	sWhere += aColumnsS[inc] + " = " + params[:"sSearch_#{inc}"].to_i.to_s + " AND "
		           	else
		            	if aColumnType[inc] == "float"
		            		sWhere += aColumnsS[inc] + " = " + params[:"sSearch_#{inc}"].to_f.to_s + " OR "
		             	else
		               		if aColumnType[inc] == "datetime"
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

	    aColumnsSelect = ['id','username','role_code','usefor']
	    #aColumnsSelect.reject! { |c| c.empty? }
	    selectedColumn = aColumnsSelect.join(', ')

	    totalrecord = User.select(selectedColumn)
	    .where(sWhere)

	    rowno = params[:iDisplayStart].to_i

	    if params[:iDisplayLength] != "-1"
	    	user = totalrecord.limit(params[:iDisplayLength]).order(sOrder).offset(params[:iDisplayStart])
	    else
	    	user = totalrecord.order(sOrder).offset(params[:iDisplayStart])
	    end

	    users = user.each.map do |u|	
	    	if u.role_code == "ADM"
	    		if session[:user_id] == u.id	
	    			action = '<button from="table" uid="'+u.id.to_s+'" code="'+u.role_code+'" type="button" class="btn btn-white edit-user-password" title="Change Password"><i class="fa fa-unlock-alt"></i></button>'
	    		else
	    			action = '<button from="table" uid="'+u.id.to_s+'" code="'+u.role_code+'" type="button" class="btn btn-white edit-user-password" title="Change Password"><i class="fa fa-unlock-alt"></i></button>'
					action += '&nbsp;&nbsp;'
					action += '<button from="table" uid="'+u.id.to_s+'" code="'+u.role_code+'" type="button" class="btn btn-white remove-user" title="Remove User"><i class="fa fa-trash-o"></i></button>'
	    		end
	    	else
				action  = '<button from="table" uid="'+u.id.to_s+'" code="'+u.role_code+'" type="button" class="btn btn-white edit-user" title="Edit" ><i class="fa fa-edit"></i></button>'
				action += '&nbsp;&nbsp;'
				action += '<button from="table" uid="'+u.id.to_s+'" code="'+u.role_code+'" type="button" class="btn btn-white edit-user-password" title="Change Password"><i class="fa fa-unlock-alt"></i></button>'
				action += '&nbsp;&nbsp;'
				action += '<button from="table" uid="'+u.id.to_s+'" code="'+u.role_code+'" type="button" class="btn btn-white remove-user" title="Remove User"><i class="fa fa-trash-o"></i></button>'
			end
	    	[
		       	u.username,
		       	u.role.name,
		       	u.usefor.capitalize,
		       	action
	    	] 
		end
	   
	    totallen = totalrecord.length


		render :json => {
			:sEcho => params[:sEcho],
			:iTotalRecords => totallen,
			:iTotalDisplayRecords => totallen,
			:aaData => users
     	}
    end


    def add_new_user
		if validate_admin && request.post?
			
			u = User.find_by_username(params[:username])

			if !u.nil? 
				status = "error"
				msg = "Username already in use!"
			else
				user = User.new
				user.username = params[:username]

				user.password_salt = BCrypt::Engine.generate_salt 
    			user.password = BCrypt::Engine.hash_secret(params[:password], user.password_salt)
				
				user.role_code = params[:role]
				user.usefor = params[:usefor]
				user.save

				status = "success"
				msg = "User Successfully Added!"
			end

		else
			status = "error"
			msg = "Not admin!"
		end

		render :json => {
			:status =>  status,
			:msg => msg
     	}
	end


	def edit_user
		if validate_admin && request.post?
			
			check = User.find_by_username(params[:username])
			u = User.find_by_id(params[:uid])

			if u.nil? 
				status = "error"
				msg = "Invalid user!"
			elsif !check.nil? && check.username != u.username
				status = "error"
				msg = "Username already in used!"
			else
				
				u.username = params[:username]	
				u.role_code = params[:role]
				u.usefor = params[:usefor]
				u.save

				status = "success"
				msg = "User Successfully Edited!"
			end

		else
			status = "error"
			msg = "Not admin!"
		end

		render :json => {
			:status =>  status,
			:msg => msg
     	}
	end


	def delete_user
		if validate_admin && request.post?
			
			u = User.find_by_id(params[:uid])

			if u.nil? 
				status = "error"
				msg = "Invalid user!"
			else
				
				u.destroy

				status = "success"
				msg = "Successfully Removed User!"
			end

		else
			status = "error"
			msg = "Not admin!"
		end

		render :json => {
			:status =>  status,
			:msg => msg
     	}
	end


	def change_user_password
		if validate_admin && request.post?
			
			u = User.find_by_id(params[:uid])
			user = User.authenticate(u.username, params[:oldP])

			if u.nil? 
				status = "error"
				msg = "Invalid user!"
			elsif user.nil?
				status = "error-p"
				msg = "Wrong Password!"
			else
				u.password = BCrypt::Engine.hash_secret(params[:newP], u.password_salt)
				u.save

				status = "success"
				msg = "Successfully Removed User!"
			end

		else
			status = "error"
			msg = "Not admin!"
		end

		render :json => {
			:status =>  status,
			:msg => msg
     	}		
	end


	def change_password
		if validate_user
			if request.post?
				
				u = User.find_by_id(session[:user_id])

				userexisted = User.authenticate(u.username, params[:oldP])
				if !userexisted.nil?
					u.password = BCrypt::Engine.hash_secret(params[:newP], u.password_salt)
					u.save

					status = "success"
					msg = "Password Successfully Changed!"
				else
					status = "error-p"
					msg = "Incorrect password!"
					
				end

				render :json => {
					:status =>  status,
					:msg => msg,
					:data => userexisted
		     	}	
			else
				render layout: "application"
			end	
		else
			redirect_to index_path, :alert => "Invalid Page!"
		end
	end

end
