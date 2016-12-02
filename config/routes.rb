Rails.application.routes.draw do
    root 'users#new'
  # resources :medical_events
  resources :users do
    resource :medical_record
  end
  resources :medical_records, except: [:index, :show, :edit, :update, :destroy] do
    resources :medical_events
  end
  resource :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'logout' => 'sessions#destroy'
end
