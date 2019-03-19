Rails.application.routes.draw do
  get '/', to: 'forms#entry'
  get '/entry', to: 'forms#entry'
  post '/posts', to: 'forms#post'
end
