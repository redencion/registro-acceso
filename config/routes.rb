Rails.application.routes.draw do
  #routes Acceso 
  get 'acceso', to: 'acceso#index'
  post 'acceso', to: 'acceso#verificacion'

  #routes verificacion
  get 'verificacion', to: 'verificacion#index'
  post 'verificacion', to: 'verificacion#buscando'
  get 'verificacion/credencial', to: 'verificacion#credencial'

  #resources :persona
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get  "organizacion", to: "organizacion#index"
  get "organizacion/registrar"
  post "organizacion", to: "organizacion#registrarOrganizacion"
  get  "organzacion/mostrar"
  get "organizacion/editar"

  #This routes Persona controller and model
  get "persona", to: "persona#index"
  post "persona", to: "persona#registrarPersona"
  post "persona/buscando", to: "persona#buscando"
  post "persona/verificando", to: "persona#verificando"
  get "persona/buscar"
  get "persona/registrar"
  get "persona/:id/mostrar", to:  "persona#mostrar", as: "persona_mostrar"
  get "persona/:id/editar", to: "persona#editar", as: "persona_editar"


end
