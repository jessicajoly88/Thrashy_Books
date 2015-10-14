Rails.application.routes.draw do
  root :to => 'novels#index'

  resources :novels
end
