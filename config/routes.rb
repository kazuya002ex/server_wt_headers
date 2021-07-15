Rails.application.routes.draw do
  root 'admin/top#index'

  namespace :admin do
    resources :top, only: %i(index login)
    resources :header_contents, only: %i(index show create update destroy)
    resources :tags, only: %i(index show create update destroy)
    resources :genres, only: %i(index show create update destroy)
  end
end
