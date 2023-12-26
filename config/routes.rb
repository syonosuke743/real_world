Rails.application.routes.draw do
  resources :homes
  root 'homes#index'
  #post 'homes/:id' => 'homes#new'
end
