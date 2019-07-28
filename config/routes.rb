Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  
  devise_scope :user do
    get "user/:id", :to => "users/registrations#detail"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
    post "create", :to => "users/registrations#create"
  end
  resources :users
  resources :messages, only: [:index]
  resource :questions, only: [:show]
  resources :mypages do
    collection do
      get :notice_chart
      get :contract_app_chart
      get :claeredup_chart
      get :openquestion_chart
      get :sloved_chart
      get :overall_rating_chart
      gat :guid
      get :comment_chart
      get :contact_chart
      get :sales_chart
      get :coincharge_chart
      get :profile
      get :mail_password
      get :card
      get :logout
    end
  end
end
