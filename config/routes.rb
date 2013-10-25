Viajante::Application.routes.draw do
  root 'experiences#index'
  resources :experiences
end
