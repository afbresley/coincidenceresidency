Rails.application.routes.draw do

  resources :coincidents
  resources :coincident_twos
  resources :coincident_trois
  resources :fourth_years
  resources :penta_years, only: [:new, :create]

  devise_for :admins

  get '/admin' => 'admins#admin_home'
  get '/2017-season' => 'home#season2017'
  get '/2018-season' => 'home#season2018'
  get '/2019-season' => 'home#season2019'
  get '/2020-season' => 'home#season2020'

  get '/home/2017-season' => 'home#season2017'
  get '/home/2018-season' => 'home#season2018'
  get '/home/2019-season' => 'home#season2019'
  get '/home/2020-season' => 'home#season2020'
  get '/schedule' => 'home#schedule'

  get '/application-asdf' => 'penta_years#new', as: 'application'
  get '/application' => 'home#index'
  get '/home' => 'home#index'
  get '/joachim' => 'home#joachim'
  get '/faq-2020' => 'home#faq2020'

  root to: "home#index"
end
