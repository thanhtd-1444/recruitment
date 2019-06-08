Rails.application.routes.draw do
  root "static_pages#home"
  get "static_pages/home"
  get "/help", to: "static_pages#help"
  get "/about", to: "static_pages#about"
  get "/contact", to: "static_pages#contact"
  get "/bussiness_content", to: "static_pages#bussiness_content"
  get "/recruitment_benefit", to: "static_pages#recruitment_benefit"
  
  resources :specific_skills, only: :index
  resources :posts, only: [:show, :index] do
    resources :comments
  end

  devise_for :admins, controllers: {sessions: "admins/sessions", passwords: "admins/passwords"}

  devise_scope :admin do
    get "/admins/sign_out" => "devise/sessions#destroy"
  end

  namespace :admins do
    resources :home, only: :index
    resources :posts do
      member do
        get :publish
      end
    end
  end
end
