Rails.application.routes.draw do
  get 'social_encirhment/index'

  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users, controllers: {sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords', confirmations: 'users/confirmations'}



  # devise_for :users, controllers: { sessions: 'users/sessions' }

  devise_scope :user do
    get '/users/sign_out' => 'users/sessions#destroy'
    get '/users/sign_up' => 'users/registrations#new'
    post '/users/sign_in' => 'sessions#create'#, :as => :user_session
  end

  root to: "dashboard#index"
end
