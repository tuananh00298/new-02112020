Rails.application.routes.draw do
  # for admin
  devise_for :admins, path: 'admin', skip: [:registrations]

  # -------------------------------------
  # for api
  #  devise_for :users, path: "api/users", module: "api", :controllers => {:registrations => "api/registrations"}
  #
  # -------------------------------------

  # -------------------------------------
  # for client
  #  devise_for :clients, path: "client", :controllers => { :sessions => "client/sessions", :registrations => "client/registrations", :passwords => "client/passwords"}
  # -------------------------------------

  root to: "welcome#index"

  # page errors
  # get "/404", to: "errors#not_found", :via => :all
  # get "/422", to: "errors#unacceptable", :via => :all
  # get "/500", to: "errors#internal_error", :via => :all
  match '*unmatched', to: 'application#route_not_found', via: :all

end
