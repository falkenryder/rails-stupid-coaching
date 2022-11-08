Rails.application.routes.draw do
  get '/ask', to: 'questions#ask'
  get '/answer', to: 'answers#show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :answers
  # Defines the root path route ("/")
  # root "articles#index"
end
