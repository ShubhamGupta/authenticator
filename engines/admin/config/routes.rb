Admin::Engine.routes.draw do
  resources :admin do
    member do
      get 'edit_avatar'
      put 'update_avatar'
    end
  end
  root to: 'home#index'
end
