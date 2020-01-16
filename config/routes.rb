Rails.application.routes.draw do
  root "bingos#index"

  resources :bingos, only: %i(show)
end
