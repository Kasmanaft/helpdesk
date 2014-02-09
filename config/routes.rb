Helpdesk::Application.routes.draw do
  resources :tickets, except: :delete
  devise_for :staffs
  root to: "tickets#new"
end
