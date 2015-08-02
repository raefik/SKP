App::Application.routes.draw do

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
   root :to => 'user#main'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'

    match "validation.html" => "user#queue"


  controller :user do
    match "login.html" => "user#login"
    #match "register.html" => "user#register"
    match "logout.html" => "user#logout"
    match "ges-admin.html" => "user#page", :as => "index"
    match "ges-admin" => "user#page"
    match "manage-users.html" => "user#manage"
    match "get-all-user.html" => "user#get_all_user"
    match "add-new-user.html" => "user#add_new_user"
    match "edit-user.html" => "user#edit_user"
    match "delete-user.html" => "user#delete_user"
    match "change-user-password.html" => "user#change_user_password"
    match "change-password.html" => "user#change_password"
    
  end

  controller :attendance do
    match "attendance.html" => "attendance#page", :as => "attendance"
    match "attendance" => "attendance#page"
    match "select-room.html" => "attendance#room", :as => "selectroom"
    match "get-event-now.html" => "attendance#event_now", :as => "event_now"
    match "check-in.html" => "attendance#check_in"

  end

  controller :webservice do
    match "webservice/getuser.html" => "webservice#user"
    match "webservice/login.html" => "webservice#login"
    match "webservice/setpush.html" => "webservice#setpushnotification"
    match "webservice/getpush.html" => "webservice#getpushnotification"
    match "webservice/logout.html" => "webservice#logout"
    match "webservice/getallmember.html" => "webservice#getallmember"
    match "webservice/getmember.html" => "webservice#getmember"
    match "webservice/preregistration.html" => "webservice#preregistration"
    match "webservice/getpending.html" => "webservice#getpending"
    match "webservice/sendack.html" => "webservice#sendack"
  end

  controller :activation do
    match "activation.html" => "activation#view", :as => "activation"
    match "get-participants.html" => "activation#get_participants", :as => "getparticipants"
    match "push-queue.html" => "activation#push_queue"
    match "update-queue.html" => "activation#update_queue"
    match "activate-rfid.html" => "activation#activate_rfid"
    match "reactivate-rfid.html" => "activation#reactivate_rfid"
    match "reactivate.html" => "activation#reactivate"
    match "rollback" => "activation#rollback"
  end

  controller :slot do
    match "manage-sessions.html" => "slot#manage", :as => "manage_sessions"
    match "add-event.html" => "slot#add_event", :as => "add_event"
    match "get-all-events.html" => "slot#all_events", :as => "all_events"
    match "new-session-data.html" => "slot#new_session_data"
    match "add-session.html" => "slot#add_session"
  end

  controller :statistic do
    match "statistics.html" => "statistic#index"
  end

  controller :participant do
    match "manage-participant.html" => "participant#manage"
    match "get-list-participant.html" => "participant#get_list_participant"
    match "new-delegate.html" => "participant#new_delegate"
    match "autoupload.html" => "participant#autoupload"
    match "edit-delegate.html" => "participant#edit_delegate"
    match "test.html" => "participant#test"
  end

end
