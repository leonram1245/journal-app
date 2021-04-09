Rails.application.routes.draw do

  devise_scope :user do
    get 'temp', to: "devise/registrations#temp"
end

  get 'taskviews/index'
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :categories do 
   resources :tasks
  end
  devise_scope :user do
    authenticated :user do
    root 'categories#index', as: :authenticated_root
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end 
end

 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
