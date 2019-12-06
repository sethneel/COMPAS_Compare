Rails.application.routes.draw do
  get root to: 'users#home'
  get '/comparisons/start_survey', to: 'comparisons#start_survey'
  resources :records 
  resources :users do 
    resources :comparisons
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
