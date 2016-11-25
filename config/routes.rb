Rails.application.routes.draw do
  resources :projects
  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources :contacts, only: [:new, :create]
  get 'welcome/index'
  root 'welcome#index'
end
