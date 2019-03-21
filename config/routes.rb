Rails.application.routes.draw do
  get '/', to: 'forms#entry'
  get '/entry', to: 'forms#entry'
  get '/creates', to: 'forms#create'
  post '/creates', to: 'forms#create'
  get '/confirms', to: 'forms#confirm'
  post '/confirms', to: 'forms#confirm'
end
