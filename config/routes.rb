Rails.application.routes.draw do
  namespace :admin do
    resources :top, only: %i(index login)
  end

  root 'admin/top#index'
end
