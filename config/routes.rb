Rails.application.routes.draw do

  get '/profile' => 'home#profile', as: 'home_profile'
  get '/category/:id' => 'home#category', as: 'home_category'
  get '/work/:id' => 'home#work', as: 'home_work'
  get '/contact' => 'home#contact', as: 'home_contact'

  root 'home#index'

  namespace :admin do
    root 'infos#edit'
    resources :categories do
      resources :works
    end
    resources :infos
    resources :profiles
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
