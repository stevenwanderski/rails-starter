Rails.application.routes.draw do
  devise_for :admin_users, path: 'admin'
  devise_for :users
  root 'home#index'

  namespace :dashboard do
    get 'account/edit'
    patch 'account/update'

    get '/', to: 'home#index'
  end

  namespace :admin do
    get 'account/edit'
    patch 'account/update'

    get '/', to: 'home#index'

    root to: redirect('/admin/sign_in')
  end
end
