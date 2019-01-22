Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'home/index'

  resources :workshops do
    resources :questions
  end
  
  resources :archives
  resources :facilitators
  resources :attendees

  root :to => 'home#index'
end
