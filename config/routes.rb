Helpdesk::Application.routes.draw do
  resources :tickets
  devise_for :staffs
  root to: "tickets#new"
end
