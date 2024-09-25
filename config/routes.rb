Rails.application.routes.draw do
  resources :events
  resources :reservations
  resources :free_posts do
    resources :comments, only: %i[create edit], shallow: true
  end
  devise_for :users, controllers: {
    omniauth_callbacks: "omniauth_callbacks",
    sessions: 'users/sessions'
  }
  get "users/show" => "users#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'home#index'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "about" => "home#about"
  get "policy"=> "home#policy"
  get "term"=>  "home#term"
  # Defines the root path route ("/")
  # root "posts#index"
end
