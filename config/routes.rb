Rails.application.routes.draw do
  resources :shows, only: [:index, :show, :new, :create, :edit, :update]
end
