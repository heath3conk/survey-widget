Rails.application.routes.draw do
  get '/' => 'pages#index', as: 'pages'

  get '/users/new' => 'users#new', as: 'new_user'
  post '/users' => 'users#create'

  get '/session/new' => 'session#new', as: 'new_session'
  post '/session' => 'session#create'
  get '/logout' => 'session#logout'

  get '/surveys' => 'surveys#index'
  get '/surveys/new' => 'surveys#new', as: 'new_survey'
  post '/surveys' => 'surveys#create'
  get '/surveys/:id' => 'surveys#show', as: 'show_survey'
  get '/surveys/:id/edit' => 'surveys#edit', as: 'edit_survey'
  patch '/surveys/:id' => 'surveys#patch', as: 'patch_survey'

  get '/questions' => 'questions#index'
  get '/questions/new' => 'questions#new', as: 'new_question'
  post '/questions' => 'questions#create'
  get '/questions/:id/edit' => 'questions#edit', as: 'edit_question'
  patch '/questions/:id' => 'questions#patch', as: 'patch_question'
  get '/questions/:id' => 'questions#show', as: 'show_question'
  delete '/questions/:id' => 'questions#delete', as: 'delete_question'

end
