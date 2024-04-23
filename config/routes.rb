Rails.application.routes.draw do
  
  get "up" => "rails/health#show", as: :rails_health_check

  root "evaluateds#index"

  resources :evaluateds do
    resources :applied_instruments, only: %i[ index new show create ]
  end

  namespace :evaluations do
    resources :step_one, only: %i[ show update ]
    resources :step_two, only: %i[ show update ]
  end
  
end
