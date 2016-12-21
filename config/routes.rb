Rails.application.routes.draw do
  devise_for :users

  get 'welcome/index'

  resources :articles

  root 'welcome#index'

  get '/about' => 'welcome#about'
  get '/illustrations' => 'articles#illustrations'
  get '/projects' => 'articles#projects'
  get '/photos' => 'articles#photos'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
