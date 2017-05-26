Rails.application.routes.draw do
  # Routes for the Tournament resource:
  # CREATE
  get "/tournaments/new", :controller => "tournaments", :action => "new"
  post "/create_tournament", :controller => "tournaments", :action => "create"

  # READ
  get "/tournaments", :controller => "tournaments", :action => "index"
  get "/tournaments/:id", :controller => "tournaments", :action => "show"

  # UPDATE
  get "/tournaments/:id/edit", :controller => "tournaments", :action => "edit"
  post "/update_tournament/:id", :controller => "tournaments", :action => "update"

  # DELETE
  get "/delete_tournament/:id", :controller => "tournaments", :action => "destroy"
  #------------------------------

  # Routes for the Team resource:
  # CREATE
  get "/teams/new", :controller => "teams", :action => "new"
  post "/create_team", :controller => "teams", :action => "create"

  # READ
  get "/teams", :controller => "teams", :action => "index"
  get "/teams/:id", :controller => "teams", :action => "show"

  # UPDATE
  get "/teams/:id/edit", :controller => "teams", :action => "edit"
  post "/update_team/:id", :controller => "teams", :action => "update"

  # DELETE
  get "/delete_team/:id", :controller => "teams", :action => "destroy"
  #------------------------------

  # Routes for the Question resource:
  # CREATE
  get "/questions/new", :controller => "questions", :action => "new"
  post "/create_question", :controller => "questions", :action => "create"

  # READ
  get "/questions", :controller => "questions", :action => "index"
  get "/questions/:id", :controller => "questions", :action => "show"

  # UPDATE
  get "/questions/:id/edit", :controller => "questions", :action => "edit"
  post "/update_question/:id", :controller => "questions", :action => "update"

  # DELETE
  get "/delete_question/:id", :controller => "questions", :action => "destroy"
  #------------------------------

  # Routes for the Game resource:
  # CREATE
  get "/games/new", :controller => "games", :action => "new"
  post "/create_game", :controller => "games", :action => "create"

  # READ
  get "/games", :controller => "games", :action => "index"
  get "/games/:id", :controller => "games", :action => "show"

  # UPDATE
  get "/games/:id/edit", :controller => "games", :action => "edit"
  post "/update_game/:id", :controller => "games", :action => "update"

  # DELETE
  get "/delete_game/:id", :controller => "games", :action => "destroy"
  #------------------------------

  devise_for :schools
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "tournaments#index"
end
