Ccm::Application.routes.draw do
  LOCALES = /en|pt\-BR/
  scope "(:locale)", :locale => LOCALES do
    resources :vehicles
    resources :users

    resource :confirmation, :only => [:show]
    resource :user_sessions, :only => [:create, :new, :destroy]
  end

  root :to => "home#index"
end