Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  get 'events/index'
  get 'session/destroy', as: 'logout'
  get 'session/destroy_discord', as: 'discord_logout'

  get 'auth/microsoft_graph', as: 'office365_auth'
  get 'auth/discord', to: 'session#discord_auth', as: 'discord_auth'
  match 'auth/:provider/callback' => 'session#create', via: [:post, :get]

   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'posts#index'
  resources :events
  resources :markdown_pages, only: [:index, :edit, :update, :new, :create]
  resources :posts, only: [:index, :edit, :update, :new, :create, :destroy]
  resources :registration
  namespace :contest do
    resources :kool_kats
    post '/vote', to: 'kool_kats#update_votes'
  end
   

  resources :feedback, only: [:index, :create]

  get '/discord', to: 'markdown_pages#discord', as: 'discord_path'
  get '/guide', to: 'markdown_pages#guide', as: 'guide'
  get '/about', to: 'markdown_pages#about', as: 'about'
  get '/spikeball', to: redirect('/events/17')
  get '/store', to: redirect('https://store.uwindsorcss.ca/')

  # This scope should be last in routes.rb
  scope module: 'science_society' do
    resources :scavenger_hunt, path: '/hunt', only: %i[index]
    get "science_society/*path", to: 'scavenger_hunt#index'
  end
end
