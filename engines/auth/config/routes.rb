Auth::Engine.routes.draw do
  devise_for :admins, :class_name => "Auth::Admin", module: :devise, path: '/admin'

  root to: redirect('/admin/sign_in')
end
