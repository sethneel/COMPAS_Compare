Rails.application.routes.draw do
  devise_for :users
  get root to: 'users#home'
  get 'comparisons/save_comparison/:choice/:record_1_id/:record_2_id', to: 'comparisons#save_comparison'
  post 'comparisons/save_form_params', to: 'comparisons#save_form_params'
  get '/comparisons/start_survey', to: 'comparisons#start_survey'
  get '/comparisons/how_many_pairs', to: 'comparisons#how_many_pairs'
  get '/comparisons/survey_analytics', to: 'comparisons#survey_analytics'
  resources :records 
  resources :users do 
    resources :comparisons
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
