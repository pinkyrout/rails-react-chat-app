Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, constraints: { format: 'json' } do
    resources :users, only: [:index, :create] do
      get :load_messages
    end
    resources :messages, only: [:create]
  end
end
