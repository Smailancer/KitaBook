Rails.application.routes.draw do
  devise_for :users , controllers: {
    registrations: 'registrations',
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :books do 
    resources :reviews
  end
  resources :categories
  root 'books#index'
end
