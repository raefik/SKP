class ApplicationController < ActionController::Base
  	protect_from_forgery
  	helper_method :user?, :admin?, :login?, :validate_user, :validate_admin, :validate_attendance, :attendance?, :home_icon, :delegation_icon, :media_icon, :speaker_icon, :nodeserver, :validate_dinner, :dinner?, :getallroom
  	#helper :all
    before_filter :set_cache_buster
   
    def getallroom   
      Room.find(:all,:order=>"name ASC")
    end

    def nodeserver
      #'http://localhost:3030'
      'http://node-ges2014.herokuapp.com:80'
    end

  	def delegation_icon
  		'<i class="fa fa-users"></i>'
  	end
  	
  	def speaker_icon
  		'<i class="fa fa-user"></i>'
  	end
  	
  	def media_icon
  		'<i class="fa fa-video-camera"></i>'
  	end
  	
  	def home_icon
  		if session[:home] == "staff"
  			media_icon.html_safe
  		elsif session[:home] == "speaker"
			  speaker_icon.html_safe  		
  		else
  			delegation_icon.html_safe
  		end
  	end


  	def validate_user

  		#if session[:user_id] == nil
  		#	return true
  		#else
  		#	return false
  		#end
  		session[:user_id] != nil ? true : false
  	end

  	def validate_admin
  		session[:role] == "ADM" ? true : false
  	end
  	
  	def validate_attendance
  		session[:role] == "ATT" ? true : false
  	end

    def validate_dinner
      session[:role] == "DNR" ? true : false
    end


	def user?
		if session[:user_id] == nil
	 		redirect_to index_url, :alert => "Please Login First!"
	  end
	end

	def admin?
	    if session[:role] != "ADM"
	    	redirect_to index_url, :alert => "Invalid Page!"
	    end
	end

	def attendance?
	    if session[:role] != "ATT"
	    	redirect_to index_url, :alert => "Invalid Page!"
	    end
	end

  def dinner?
      if session[:role] != "DNR"
        redirect_to index_url, :alert => "Invalid Page!"
      end
  end

	def login?
	    if session[:user_id] != nil
	      	redirect_to index_url, :alert => "Already Logged In!"
	    end    
	end

  def set_cache_buster
    response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
    response.headers["Pragma"] = "no-cache"
    response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
  end


end
