Rails.application.routes.draw do
  get '/entry', to: 'forms#entry'
  post '/posts', to: 'forms#post'
end
