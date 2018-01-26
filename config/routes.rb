Rails.application.routes.draw do
  root to: 'activity_types#index'
  resources :activity_instances
  resources :activity_types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
