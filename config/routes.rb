Rails.application.routes.draw do
  resources :customers, only: :index do
    collection do
      get :order, :missing_email
    end
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
