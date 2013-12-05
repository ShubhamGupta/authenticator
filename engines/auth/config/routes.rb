Auth::Engine.routes.draw do
  devise_for :admins, :class_name => "Auth::Admin", module: :devise, path: '/admin'

  root to: 'sessions#new'
end
