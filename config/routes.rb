Rails.application.routes.draw do
  get '/' => 'pages#index', as: 'pages'

  get '/users/new' => 'users#new', as: 'new_user'
  post '/users' => 'users#create'

  get '/session/new' => 'session#new', as: 'new_session'
  post '/session' => 'session#create'
  get '/logout' => 'session#logout'

  get '/surveys' => 'surveys#index'

  get '/questions' => 'questions#index'
end
