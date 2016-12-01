Rails.application.routes.draw do
  resources :medical_records
  root 'medical_records#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
