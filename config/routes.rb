Rails.application.routes.draw do


  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :categories do 
   resources :tasks
     get 'tasks/view'

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
