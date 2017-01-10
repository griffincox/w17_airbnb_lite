Rails.application.routes.draw do
  # Routes for the Request resource:
  # CREATE
  get "/requests/new", :controller => "requests", :action => "new"
  post "/create_request", :controller => "requests", :action => "create"

  # READ
  get "/requests", :controller => "requests", :action => "index"
  get "/requests/:id", :controller => "requests", :action => "show"

  # UPDATE
  get "/requests/:id/edit", :controller => "requests", :action => "edit"
  post "/update_request/:id", :controller => "requests", :action => "update"

  # DELETE
  get "/delete_request/:id", :controller => "requests", :action => "destroy"
  #------------------------------

  # Routes for the Bookmark resource:
  # CREATE
  get "/bookmarks/new", :controller => "bookmarks", :action => "new"
  post "/create_bookmark", :controller => "bookmarks", :action => "create"

  # READ
  get "/bookmarks", :controller => "bookmarks", :action => "index"
  get "/bookmarks/:id", :controller => "bookmarks", :action => "show"

  # UPDATE
  get "/bookmarks/:id/edit", :controller => "bookmarks", :action => "edit"
  post "/update_bookmark/:id", :controller => "bookmarks", :action => "update"

  # DELETE
  get "/delete_bookmark/:id", :controller => "bookmarks", :action => "destroy"
  #------------------------------

  # Routes for the Userreview resource:
  # CREATE
  get "/userreviews/new", :controller => "userreviews", :action => "new"
  post "/create_userreview", :controller => "userreviews", :action => "create"

  # READ
  get "/userreviews", :controller => "userreviews", :action => "index"
  get "/userreviews/:id", :controller => "userreviews", :action => "show"

  # UPDATE
  get "/userreviews/:id/edit", :controller => "userreviews", :action => "edit"
  post "/update_userreview/:id", :controller => "userreviews", :action => "update"

  # DELETE
  get "/delete_userreview/:id", :controller => "userreviews", :action => "destroy"
  #------------------------------

  # Routes for the Message resource:
  # CREATE
  get "/messages/new", :controller => "messages", :action => "new"
  post "/create_message", :controller => "messages", :action => "create"

  # READ
  get "/messages", :controller => "messages", :action => "index"
  get "/messages/:id", :controller => "messages", :action => "show"

  # UPDATE
  get "/messages/:id/edit", :controller => "messages", :action => "edit"
  post "/update_message/:id", :controller => "messages", :action => "update"

  # DELETE
  get "/delete_message/:id", :controller => "messages", :action => "destroy"
  #------------------------------

  # Routes for the Booking resource:
  # CREATE
  get "/bookings/new", :controller => "bookings", :action => "new"
  post "/create_booking", :controller => "bookings", :action => "create"

  # READ
  get "/bookings", :controller => "bookings", :action => "index"
  get "/bookings/:id", :controller => "bookings", :action => "show"

  # UPDATE
  get "/bookings/:id/edit", :controller => "bookings", :action => "edit"
  post "/update_booking/:id", :controller => "bookings", :action => "update"

  # DELETE
  get "/delete_booking/:id", :controller => "bookings", :action => "destroy"
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get "/users/new", :controller => "users", :action => "new"
  post "/create_user", :controller => "users", :action => "create"

  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  # UPDATE
  get "/users/:id/edit", :controller => "users", :action => "edit"
  post "/update_user/:id", :controller => "users", :action => "update"

  # DELETE
  get "/delete_user/:id", :controller => "users", :action => "destroy"
  #------------------------------

  # Routes for the Userphoto resource:
  # CREATE
  get "/userphotos/new", :controller => "userphotos", :action => "new"
  post "/create_userphoto", :controller => "userphotos", :action => "create"

  # READ
  get "/userphotos", :controller => "userphotos", :action => "index"
  get "/userphotos/:id", :controller => "userphotos", :action => "show"

  # UPDATE
  get "/userphotos/:id/edit", :controller => "userphotos", :action => "edit"
  post "/update_userphoto/:id", :controller => "userphotos", :action => "update"

  # DELETE
  get "/delete_userphoto/:id", :controller => "userphotos", :action => "destroy"
  #------------------------------

  # Routes for the Listing resource:
  # CREATE
  get "/listings/new", :controller => "listings", :action => "new"
  post "/create_listing", :controller => "listings", :action => "create"

  # READ
  get "/listings", :controller => "listings", :action => "index"
  get "/listings/:id", :controller => "listings", :action => "show"

  # UPDATE
  get "/listings/:id/edit", :controller => "listings", :action => "edit"
  post "/update_listing/:id", :controller => "listings", :action => "update"

  # DELETE
  get "/delete_listing/:id", :controller => "listings", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
