Rails.application.routes.draw do
  resources :users
  get :hello_world, to: 'hello#hello_world'
  get 'reports/info'
end
