Rails.application.routes.draw do
  resources :articles do
  	resource :comments
  end
  root to: 'articles#index'
end
