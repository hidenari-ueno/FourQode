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
      get :notice_chart         #お知らせ
      get :contract_app_chart   #請負申請一覧
      get :clearedup_chart      #解決した質問(質問側)
      get :openquestion_chart   #未解決の質問(質問側)
      get :solved_chart         #解決した質問(解決側)
      get :overall_rating_chart #評価一
      get :guid                 #ガイド
      get :comment_chart        #コメント一覧
      get :contact_chart        #お問い合わせ　
      get :sales_chart          #売り上げ
      get :coincharge_chart     #コインチャージ
      get :profile              #プロフィール
      get :mail_password        #メールアドレス登録/変更
      get :card                 #お支払い方法登録/変更
      get :logout               #ログアウト
    end
  end
end
