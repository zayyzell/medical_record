Rails.application.routes.draw do
    root 'users#new'
  resources :medical_events
  resources :medical_records
  resource :sessions
  resource :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'logout' => 'sessions#destroy'
end
