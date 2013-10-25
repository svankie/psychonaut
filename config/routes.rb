Viajante::Application.routes.draw do
  root 'homepage#index'

  get "homepage/index", as: "homepage"
  get "guides/index", as: "guides", path: "/guias"
  get "tools/index", as: "tools", path: "/herramientas"

  resources :experiences, :path => "/experiencias"
end
