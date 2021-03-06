Rails.application.routes.draw do
  root 'welcome#index'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations' }

  devise_scope :user do
    get '/users/auth/:provider/callback', to: 'users/sessions#create'
  end

  get 'welcome', to: 'welcome#show'


  get '/parents/children', to: 'parents#children', as: 'parent_children'
  get '/parents/edit', to: 'parents#edit'
  patch '/parents/edit', to: 'parents#update'
  get '/parents/new', to: 'parents#new'
  post '/parents/new', to: 'parents#create'
  get '/parents', to: 'parents#index'
  get '/parents/:id', to: 'parents#show'

  namespace :teachers do
    get '/dashboard', to: 'dashboard#index'
    get '/register', to: 'registration#new'
    post '/register', to: 'registration#create'
    # get '/profile', to: 'dashboard#show'
    get '/profile/edit', to: 'dashboard#edit'
    patch '/profile/edit', to: 'dashboard#update'
    get '/classroom', to: 'dashboard#classroom'
    #get '/attendance', to: 'dashboard#attendance'
    post '/events', to: 'dashboard#event_post'
    post '/children', to: 'dashboard#children_post'
  end

end
