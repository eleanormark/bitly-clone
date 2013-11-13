Url::Application.routes.draw do
  resources :sessions
  resources :users
  resources :shortened_urls
  get 'visits/:slug', :to => 'visits#show'

  root :to => 'shortened_urls#index'
end
